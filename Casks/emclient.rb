cask 'emclient' do
  version '7.2.37961'
  sha256 '4b38b07cb6b172e92aeb9b91482b560bda1cb8dbaf728440201ce6e584fcea81'

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
