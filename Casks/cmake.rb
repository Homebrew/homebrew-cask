cask 'cmake' do
  version '3.5.0'
  sha256 'ebbdbe2ac16105c1482690b80e4b9fd9101faabecc90a9b83b3f4353d4230031'

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
