cask 'orfo-plus' do
  version :latest
  sha256 :no_check

  url 'http://www.orfo.ru/download/ORFO2016Plus.dmg'
  name 'ORFO Plus'
  name 'ОРФО Плюс'
  homepage 'http://www.orfo.ru/'

  auto_updates true
  conflicts_with cask: 'orfo'

  pkg 'ORFO2016Plus.pkg'

  uninstall pkgutil:    [
                          'com.informatic.pkg.orfo2016',
                          'com.informatic.pkg.seticon',
                          'com.informatic.pkg.startpp',
                        ],
            delete:     '/Library/PreferencePanes/ORFOSetup.prefPane',
            login_item: 'OrfoUpdate'

  zap trash: [
               '/Library/Application Support/ORFO 2016',
               '~/Library/Caches/com.informatic.OrfoUpdate',
               '~/Library/Preferences/com.informatic.RussianCollection.plist',
             ]

  caveats do
    reboot
  end
end
