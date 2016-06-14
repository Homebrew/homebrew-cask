cask 'cyberduck' do
  version '5.0.1.20379'
  sha256 '017101102b270faffab86cd5e268f9be42d7bc7a9b640b10a8a5fd9011942aac'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '6333c657d59e41d76aa77dc32c5bfcfd4e5b8ad5a360bbf3469db95c06e9010c'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'
  license :gpl

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
              ]
end
