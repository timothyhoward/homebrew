require 'formula'

class Generatorrunner < Formula
  homepage 'http://www.pyside.org/docs/generatorrunner'
  url 'http://pyside.org/files/generatorrunner-0.6.16.tar.bz2'
  md5 'c7011b8ee08e228779a769b7cfa90f5f'

  depends_on 'cmake' => :build

  depends_on 'apiextractor'

  def install
    args = std_cmake_parameters.split
    args << "-DCMAKE_INSTALL_NAME_DIR=#{HOMEBREW_PREFIX}/lib"
    args << "-DCMAKE_BUILD_WITH_INSTALL_RPATH=ON"

    system "cmake", ".", *args
    system "make install"
  end
end
