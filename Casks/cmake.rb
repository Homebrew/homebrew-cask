cask :v1 => 'cmake' do
  version '3.2.2'
  sha256 '430b9f94a363ff19d5f66eacc5d6bc55bd9dac75d6fc6bcb813d8b451c1475c4'

  url "http://www.cmake.org/files/v#{version.sub(%r{\.\d+$},'')}/cmake-#{version}-Darwin-x86_64.dmg"
  name 'CMake'
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
