cask 'emclient' do
  version '8.0.1752'
  sha256 'eb31e675960b084038d5233096ab1c35a3ea2dd248a1ceb734291519aba57c10'

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
