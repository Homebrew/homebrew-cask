cask 'cyberduck' do
  version '7.4.0.32960'
  sha256 'def0daced06d0f60e83bbb0862d71d7283c130bbc15d4e641d5769ff9de6d2e8'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  auto_updates true

  app 'Cyberduck.app'

  zap trash: [
               '~/Library/Application Support/Cyberduck',
               '~/Library/Caches/ch.sudo.cyberduck',
               '~/Library/Group Containers/G69SCX94XU.duck',
               '~/Library/Preferences/ch.sudo.cyberduck.plist',
               '~/Library/Saved Application State/ch.sudo.cyberduck.savedState',
             ]
end
