cask :v1 => 'cyberduck' do
  version '4.5.2'
  sha256 'cff337f880b6ebbcc7f2e246b677fa5346fd225ae83289dca71ab35cf4b6eb8f'

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
