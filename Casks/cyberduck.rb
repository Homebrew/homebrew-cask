cask :v1 => 'cyberduck' do
  version '4.7'
  sha256 'dfdd220e58d31eccd5cd2902d27050896ad57d23e4635b759cbcd40756bc180a'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :sha256 => '798ae27c64814cc104bec0cef3081667dda9cf42ebaf474ee29d24e76c3cb4ce'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap :delete => [
                  '~/Library/Application Support/Cyberduck',
                  '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
