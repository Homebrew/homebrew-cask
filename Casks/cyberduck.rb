cask :v1 => 'cyberduck' do
  version '4.6'
  sha256 '1f16682541bd2587266fce6f9c1b43bb923df6fddeb715d59a9b7bd3466c796f'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :sha256 => '9c35b816cb54cd4b984c7e18e239360a840da871b4fea148ce896d305860385e'
  homepage 'http://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'
  zap :delete => [
                  '~/Library/Application Support/Cyberduck',
                  '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
