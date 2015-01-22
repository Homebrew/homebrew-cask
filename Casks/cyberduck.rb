cask :v1 => 'cyberduck' do
  version '4.6.3'
  sha256 'fa3ce6579e93dc2979b99510cd05d9af99d17fe672ca3d71f9eecf81003e4fa6'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :sha256 => 'e7e146d40740bc4de0565cc8a425599cf7434bdc9cfe902abe2e915f288000f7'
  homepage 'http://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap :delete => [
                  '~/Library/Application Support/Cyberduck',
                  '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
