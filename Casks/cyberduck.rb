cask 'cyberduck' do
  version '6.1.0.25371'
  sha256 'dfde80a2544e778569ee7a474eaaab80d669906c0175be2ad86fdf49ca299fef'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '808cf385cf4db3311501f6817a1c94cbf1f7981f6007b950b9b857d4f1072bf2'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
