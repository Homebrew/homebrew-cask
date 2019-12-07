cask 'emclient' do
  version '7.2.35700'
  sha256 '22d877fd1d1c356e7590e4144ae2ac04013fa437eba2498a73d4e73e62846257'

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
