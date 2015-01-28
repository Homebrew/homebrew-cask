cask :v1 => 'cyberduck' do
  version '4.6.4'
  sha256 '20a6628be90b68c0625aa176c4bfa69308cec664a8da92e7a2470923c209dab9'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :sha256 => '92446a436528335c288c095dbe13099308139321a718b396e5e5aa728cd073b3'
  homepage 'http://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap :delete => [
                  '~/Library/Application Support/Cyberduck',
                  '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
