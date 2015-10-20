cask :v1 => 'cyberduck' do
  version '4.7.2'
  sha256 '85baaf5d1efe9d9b3c2fc16998f0a054d638fcabfc0af58dbbfcbaf670cf5762'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :sha256 => 'b7150d07e69d18141f614de85bc1ddb4fa0ce440288d958bec5fe23104b4ee4c'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap :delete => [
                  '~/Library/Application Support/Cyberduck',
                  '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
