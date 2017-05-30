cask 'cyberduck' do
  version '6.0.1.24918'
  sha256 '8586fa1994e6eb72e4eb267d12bd26d068be5e283791d70f3a4b54710c2414ed'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: '0f0af050cf99a8074fb1e8236150e4fdab172c935f0a9a80cd62f1eb892bce9e'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap delete: [
                '~/Library/Application Support/Cyberduck',
                '~/Library/Preferences/ch.sudo.cyberduck.plist',
                '~/Library/Caches/ch.sudo.cyberduck',
              ]
end
