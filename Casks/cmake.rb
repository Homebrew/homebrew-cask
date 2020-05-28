cask 'cmake' do
  version '3.17.3'
  sha256 '3cc6538f000e010e0002dc2d27d93f6a6f071218a3044808bdb6db98228b32ba'

  url "https://www.cmake.org/files/v#{version.major_minor}/cmake-#{version}-Darwin-x86_64.dmg"
  appcast 'https://cmake.org/files/LatestRelease/'
  name 'CMake'
  homepage 'https://cmake.org/'

  conflicts_with formula: 'cmake'

  app 'CMake.app'
  binary "#{appdir}/CMake.app/Contents/bin/cmake"
  binary "#{appdir}/CMake.app/Contents/bin/ccmake"
  binary "#{appdir}/CMake.app/Contents/bin/cpack"
  binary "#{appdir}/CMake.app/Contents/bin/ctest"
  binary "#{appdir}/CMake.app/Contents/bin/cmake-gui"
end
