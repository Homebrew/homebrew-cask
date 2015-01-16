cask :v1 => 'cyberduck' do
  version '4.6.2'
  sha256 '88f697f886c4e95e7ce4d126594067aee0330b762045f42e75ba354ccb546243'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :sha256 => 'f73e5eccd507833db458a174858b0c08f665b7cf0f61e840b4b7a2a380769a67'
  homepage 'http://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap :delete => [
                  '~/Library/Application Support/Cyberduck',
                  '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
