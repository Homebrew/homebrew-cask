cask 'mozyhome' do
  version '2.13.8.1552-77645'
  sha256 '13708fefed1301d55dff1d5331a346bdf70938c2994075c170e5bbd13619e01f'

  url "https://secure.mozy.com/downloads/mozy-#{version.gsub('.', '_')}.dmg"
  name 'MozyHome'
  homepage 'https://mozy.com/'
  license :commercial

  pkg 'MozyHome Installer.pkg'

  uninstall pkgutil: [
                       'com.mozy.backup.pkg',
                       'com.mozy.configpane',
                       'com.mozy.status.pkg',
                     ]

  zap delete: [
                '/Library/Application Support/MozyHome',
                '/Library/Caches/MozyHome',
                '~/Library/Preferences/com.mozy.decrypt.plist',
                '~/Library/Preferences/com.mozy.status.plist',
              ]
end
