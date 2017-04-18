cask 'cyberduck' do
  version '5.4.3.23925'
  sha256 'e64faf13c551d5bd4d1b651d2541596e7640cc3575f53066525f429eb8157488'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '0dfa2f54272ccabdd6b0ea205f4f96a262241d3bc378043d617ed15507473d50'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
