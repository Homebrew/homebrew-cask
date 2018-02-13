cask 'cyberduck' do
  version '6.4.0.27606'
  sha256 'f2518cdfb3c0c4e3f86e8e46945996e8c297cd2d45bb5ab58fa6f883f207af8e'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'a9e82fb1054a65e9579735af00d37265f41b41702db1d437f4896a5582896a7f'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap trash: [
               '~/Library/Application Support/Cyberduck',
               '~/Library/Caches/ch.sudo.cyberduck',
               '~/Library/Preferences/ch.sudo.cyberduck.plist',
             ]
end
