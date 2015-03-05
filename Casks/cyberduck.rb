cask :v1 => 'cyberduck' do
  version '4.6.5'
  sha256 '3855066772df5ea211a770318d5135ca4f4ff12197336c06df3c0d4d165bdcd1'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :sha256 => '8d3c4f2c2b0ec3f83a3230b38b1dfaabb25a05b5a91c4d316a6c4ef0c0fe4de8'
  homepage 'http://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap :delete => [
                  '~/Library/Application Support/Cyberduck',
                  '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
