cask 'cyberduck' do
  version '6.3.3.27375'
  sha256 '4483d239b29bfefe60273fb2ffef812d4ce82b342aa97ca3a0c4dd936f68f260'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss',
          checkpoint: 'ca4c9a4de244b32fb39a74498a8db4ab127143465913e56533bf0d61a0855148'
  name 'Cyberduck'
  homepage 'https://cyberduck.io/'

  app 'Cyberduck.app'

  zap trash: [
               '~/Library/Application Support/Cyberduck',
               '~/Library/Caches/ch.sudo.cyberduck',
               '~/Library/Preferences/ch.sudo.cyberduck.plist',
             ]
end
