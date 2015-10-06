cask :v1 => 'cyberduck' do
  version '4.7.2'
  sha256 '85baaf5d1efe9d9b3c2fc16998f0a054d638fcabfc0af58dbbfcbaf670cf5762'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :sha256 => '4a9b30777203a1b1b1116c5d98e6f0fcbfcb2285eb0618a50518be7b1a8afa04'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap :delete => [
                  '~/Library/Application Support/Cyberduck',
                  '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
