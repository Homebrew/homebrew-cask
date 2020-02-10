cask 'memory-map' do
  version '1.5'
  sha256 '957fbbaa6fa83507b92d41a7da21dde3edaeaf17b28fe479ef87bceb6ad53576'

  url "https://memory-map.com/download/mac/Memory-Map.#{version}.pkg"
  appcast 'https://memory-map.com/Mapping_Software_Downloads.html'
  name 'Memory-Map'
  homepage 'https://memory-map.com/'

  pkg "Memory-Map.#{version}.pkg"

  uninstall pkgutil: 'com.memory-map.pkg.macapp'
end
