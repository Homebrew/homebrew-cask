cask 'cmake' do
  version '3.16.0'
  sha256 '51797467e8cd35c3c8d96970b5eab6e33702f3060f2b7a986f2d05536a269710'

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
