cask 'emclient' do
  version '7.2.34506'
  sha256 '591ce6f3e7ca07410b905ca97ef9ce2f19c98968e7926bd153c315ac20327782'

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
