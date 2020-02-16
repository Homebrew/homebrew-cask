cask 'emclient' do
  version '7.2.37934'
  sha256 '1213f49663cf6a2bab74d09ed677748cd12958da337085993f1d76f151a7d71f'

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
