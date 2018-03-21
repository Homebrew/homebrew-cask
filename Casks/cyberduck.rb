cask 'cyberduck' do
  version '6.4.4.27722'
  sha256 '56b30f565d0dc198f830774bd5b0479bde5d3b0643fd4b4ace6e437a4de3fe32'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'cf149c94b2c0999f4373129e6f3432e242a6e84d9223f1b7eae67577e8b6089d'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  auto_updates true

  app 'Cyberduck.app'

  zap trash: [
               '~/Library/Application Support/Cyberduck',
               '~/Library/Caches/ch.sudo.cyberduck',
               '~/Library/Preferences/ch.sudo.cyberduck.plist',
             ]
end
