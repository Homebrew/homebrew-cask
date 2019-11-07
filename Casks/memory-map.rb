cask 'memory-map' do
  version '1.5'
  sha256 'dcb3b29c2f38b124dbf85278ded21e429b95e19cde0c856853d6842eaaac2c5f'

  url "https://memory-map.com/download/mac/Memory-Map.#{version}.pkg"
  appcast 'https://memory-map.com/Mapping_Software_Downloads.html'
  name 'Memory-Map'
  homepage 'https://memory-map.com/'

  pkg "Memory-Map.#{version}.pkg"

  uninstall pkgutil: 'com.memory-map.pkg.macapp'
end
