cask :v1 => 'cyberduck' do
  version '4.7'
  sha256 'dfdd220e58d31eccd5cd2902d27050896ad57d23e4635b759cbcd40756bc180a'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :sha256 => '8d3c4f2c2b0ec3f83a3230b38b1dfaabb25a05b5a91c4d316a6c4ef0c0fe4de8'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap :delete => [
                  '~/Library/Application Support/Cyberduck',
                  '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
