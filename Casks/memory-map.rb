cask 'memory-map' do
  version '1.2'
  sha256 'c79bb56e4e147bef606533d72e719a846c4078393f82a57dbc2cd24c4b81817b'

  url "https://memory-map.com/download/mac/Memory-Map.#{version}.pkg"
  name 'Memory-Map'
  homepage 'https://memory-map.com/'

  pkg "Memory-Map.#{version}.pkg"

  uninstall pkgutil: 'com.memory-map.pkg.macapp'
end
