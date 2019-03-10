cask 'emclient' do
  version '7.2.34875'
  sha256 '2b533dba838b1e226b477674c58316de9346647965a5cee4ed1db3a71776e665'

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
