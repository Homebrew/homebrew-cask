cask 'memory-map' do
  version '1.3'
  sha256 '12a2c800e9030196735e348c2ff80bc7fa6a3b121876c6a1e95c98bc8cc8e0d7'

  url "https://memory-map.com/download/mac/Memory-Map.#{version}.pkg"
  appcast 'https://memory-map.com/Mapping_Software_Downloads.html'
  name 'Memory-Map'
  homepage 'https://memory-map.com/'

  pkg "Memory-Map.#{version}.pkg"

  uninstall pkgutil: 'com.memory-map.pkg.macapp'
end
