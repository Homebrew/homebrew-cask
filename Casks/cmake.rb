cask :v1 => 'cmake' do
  version '3.1.1'
  sha256 '5106e940d8abcdbd2c8b5117ee9618c90207aeb4235837e5170aaf1a950230f8'

  url "http://www.cmake.org/files/v3.1/cmake-#{version}-Darwin-x86_64.dmg"
  homepage 'http://cmake.org'
  license :bsd

  app 'CMake.app'
  binary 'CMake.app/Contents/bin/cmake'
  binary 'CMake.app/Contents/bin/ccmake'
  binary 'CMake.app/Contents/bin/cmakexbuild'
  binary 'CMake.app/Contents/bin/cpack'
  binary 'CMake.app/Contents/bin/ctest'
  binary 'CMake.app/Contents/bin/cmake-gui'

  conflicts_with :formula => 'cmake'
end
