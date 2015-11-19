cask :v1 => 'cyberduck' do
  version '4.7.3'
  sha256 '38ad2ed10ecba59bf27489b9ef0e5338d8066e3f1c27d0445d414f92d9e84f93'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          :sha256 => '50f62db7f41c6b0fa8b48d82acb18e8d473291c4ee36be3e608c95961c284894'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap :delete => [
                  '~/Library/Application Support/Cyberduck',
                  '~/Library/Preferences/ch.sudo.cyberduck.plist',
                 ]
end
