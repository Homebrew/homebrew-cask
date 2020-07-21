cask 'element' do
  version '1.7.1'
  sha256 '7ee9e2c1fd455ee887b0ca224dc275a4dca8ee48fb37471556f49d38da41476a'

  # packages.riot.im/desktop was verified as official when first introduced to the cask
  url "https://packages.riot.im/desktop/install/macos/Element%20(Riot)-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-desktop/releases.atom'
  name 'Element (Riot)'
  homepage 'https://element.io/get-started'

  auto_updates true

  app 'Element (Riot).app'

  zap trash: [
               '~/Library/Application Support/Riot',
               '~/Library/Application Support/Element (Riot)',
               '~/Library/Caches/im.riot.app',
               '~/Library/Caches/im.riot.app.ShipIt',
               '~/Library/Logs/Riot',
               '~/Library/Preferences/im.riot.app.helper.plist',
               '~/Library/Preferences/im.riot.app.plist',
               '~/Library/Saved Application State/im.riot.app.savedState',
             ]
end
