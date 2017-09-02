cask 'cyberduck' do
  version '6.2.4.26305'
  sha256 '599045f48970d7f2f901157c7386067fe1d6b76025f63523a4664152aec6168d'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'f86f616aee2f7f7ac87f1c5c5534e4e430952663fe6de98d221f813e77543ae5'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
