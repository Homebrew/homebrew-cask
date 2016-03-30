cask 'cmake' do
  version '3.5.1'
  sha256 'a01c25b90296cabbeeca85c2258336e6ccefc36f93589b4d32af6cd95646a83f'

  url "https://www.cmake.org/files/v#{version.major_minor}/cmake-#{version}-Darwin-x86_64.dmg"
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
