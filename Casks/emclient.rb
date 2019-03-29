cask 'emclient' do
  version '7.2.35128'
  sha256 'faf1a2d4ccd693ffe0cf1fab22ab65cc24fe66d0420dcecf6b501546deb455dc'

  url "https://cdn-dist.emclient.com/dist/v#{version}_Mac/setup.pkg"
  name 'eM Client'
  homepage 'https://www.emclient.com/'

  auto_updates true

  pkg 'setup.pkg'

  uninstall pkgutil: 'com.emclient.mail.client.pkg'

  zap trash: [
               '~/Library/Caches/com.emclient.mail.client',
               '~/Library/Preferences/com.emclient.mail.client.plist',
               '~/Library/Preferences/com.emclient.mail.repair.plist',
               '~/Library/Preferences/com.emclient.mail.shared.plist',
               '~/Library/Saved Application State/com.emclient.mail.client.savedState',
             ]
end
