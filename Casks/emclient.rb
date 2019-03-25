cask 'emclient' do
  version '7.2.35116'
  sha256 '249fd5ec6499b9b72802500a1dc1d2f524d7dc694701ba8534778439bd3d1780'

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
