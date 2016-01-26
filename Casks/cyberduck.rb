cask 'cyberduck' do
  version '4.7.3'
  sha256 '38ad2ed10ecba59bf27489b9ef0e5338d8066e3f1c27d0445d414f92d9e84f93'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '30331340ad8d1dd1d9ea92f663dee6a2721bf916c0f83c4999a4b2c4e985f3fa'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
