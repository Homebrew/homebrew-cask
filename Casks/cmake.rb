cask 'cmake' do
  version '3.4.3'
  sha256 'b3935bed969161570556b8f3e4850fd99da36efc632f413e3079b5b880c233e0'

  url "https://www.cmake.org/files/v#{version.sub(%r{\.\d+$}, '')}/cmake-#{version}-Darwin-x86_64.dmg"
  name 'CMake'
  homepage 'https://cmake.org'
  license :bsd

  conflicts_with formula: 'cmake'

  app 'CMake.app'
  binary 'CMake.app/Contents/bin/cmake'
  binary 'CMake.app/Contents/bin/ccmake'
  binary 'CMake.app/Contents/bin/cmakexbuild'
  binary 'CMake.app/Contents/bin/cpack'
  binary 'CMake.app/Contents/bin/ctest'
  binary 'CMake.app/Contents/bin/cmake-gui'
end
