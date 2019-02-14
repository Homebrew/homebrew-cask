cask 'emclient' do
  version '7.2.34666'
  sha256 '46d4fa45eeeb9c6613596be2165024f4486b5ac2e75d059a24e27b2b0a1f2968'

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
