class Cyberduck < Cask
  version '4.5.2'
  sha256 'cff337f880b6ebbcc7f2e246b677fa5346fd225ae83289dca71ab35cf4b6eb8f'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss'
  homepage 'http://cyberduck.io/'

  app 'Cyberduck.app'
  zap :files => [
                 '~/Library/Application Support/Cyberduck',
                 '~/Library/Preferences/ch.sudo.cyberduck.plist',
                ]
end
