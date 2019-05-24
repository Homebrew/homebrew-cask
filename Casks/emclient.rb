cask 'emclient' do
  version '7.2.35666'
  sha256 '7257907a0b381445007ab2b29843760b7d5994f7286bdd4c3d172ed7c6c69cb1'

  url "https://cdn-dist.emclient.com/dist/v#{version}_Mac/setup.pkg"
  appcast 'https://www.emclient.com/release-history?os=mac'
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
