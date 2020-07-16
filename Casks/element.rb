cask 'element' do
  version '1.6.8'
  sha256 '4a03fb655c33d525995af5874aedfa3b5b2277ebf986e89f08564de222125c3b'

  # packages.riot.im/desktop was verified as official when first introduced to the cask
  url "https://packages.riot.im/desktop/install/macos/Element%20(Riot)-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-desktop/releases.atom'
  name 'Element (Riot)'
  homepage 'https://element.io/get-started'

  auto_updates true

  app 'Element (Riot).app'

  zap trash: [
               '~/Library/Application Support/Riot',
               '~/Library/Caches/im.riot.app',
               '~/Library/Caches/im.riot.app.ShipIt',
               '~/Library/Logs/Riot',
               '~/Library/Preferences/im.riot.app.helper.plist',
               '~/Library/Preferences/im.riot.app.plist',
               '~/Library/Saved Application State/im.riot.app.savedState',
             ]
end
