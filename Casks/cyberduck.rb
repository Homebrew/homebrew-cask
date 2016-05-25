cask 'cyberduck' do
  version '5.0.20277'
  sha256 '4512925ee7f54a14d7fcc70908906667fb13273dd4e42234b13cb1ba7e5dd2de'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '35236c7a1d592451db8823dff229328385a9532a7fdc18069494ea8d64c9cece'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
