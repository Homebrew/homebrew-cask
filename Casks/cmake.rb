cask 'cmake' do
  version '3.12.4'
  sha256 '9b78cc598308b410dea44a5a50f58a92ac5fe36043ddacb2cd5771d4494ae53e'

  url "https://www.cmake.org/files/v#{version.major_minor}/cmake-#{version}-Darwin-x86_64.dmg"
  name 'CMake'
  homepage 'https://cmake.org/'

  conflicts_with formula: 'cmake'

  app 'CMake.app'
  binary "#{appdir}/CMake.app/Contents/bin/cmake"
  binary "#{appdir}/CMake.app/Contents/bin/ccmake"
  binary "#{appdir}/CMake.app/Contents/bin/cmakexbuild"
  binary "#{appdir}/CMake.app/Contents/bin/cpack"
  binary "#{appdir}/CMake.app/Contents/bin/ctest"
  binary "#{appdir}/CMake.app/Contents/bin/cmake-gui"
end
