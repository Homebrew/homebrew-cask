cask 'memory-map' do
  version '1.6'
  sha256 '886c32c41b012cfb8761b6079e42625bbf4a871315d19e42840d32c3c38f6b88'

  url "https://memory-map.com/download/mac/Memory-Map.#{version}.pkg"
  appcast 'https://memory-map.com/Mapping_Software_Downloads.html'
  name 'Memory-Map'
  homepage 'https://memory-map.com/'

  pkg "Memory-Map.#{version}.pkg"

  uninstall pkgutil: 'com.memory-map.pkg.macapp'
end
