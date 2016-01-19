cask 'cmake' do
  version '3.4.1'
  sha256 '3c6d84b32d3e787a7161244db310f36441c015f6f39345887d65cacbcfb9107d'

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
