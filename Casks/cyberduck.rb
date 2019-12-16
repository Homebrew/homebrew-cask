cask 'cyberduck' do
  version '7.2.2.32045'
  sha256 '0ba1ec2f8e5a6a1f95bd397b8647db5e045c92687c9b00380f7e9654d19c3a9a'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  auto_updates true

  app 'Cyberduck.app'

  zap trash: [
               '~/Library/Application Support/Cyberduck',
               '~/Library/Caches/ch.sudo.cyberduck',
               '~/Library/Preferences/ch.sudo.cyberduck.plist',
               '~/Library/Saved Application State/ch.sudo.cyberduck.savedState',
             ]
end
