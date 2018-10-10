cask 'kaku' do
  version '1.9.0'
  sha256 '3c5edd62a85a244140e73d728879dec93c0073b104fe59726579ebbb97e82546'

  # github.com/EragonJ/Kaku was verified as official when first introduced to the cask
  url "https://github.com/EragonJ/Kaku/releases/download/#{version}/Kaku-#{version}.dmg"
  appcast 'https://github.com/EragonJ/Kaku/releases.atom'
  name 'Kaku'
  homepage 'https://kaku.rocks/'

  app 'Kaku.app'
end
