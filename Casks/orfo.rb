cask 'orfo' do
  version :latest
  sha256 :no_check

  url 'http://www.orfo.ru/download/ORFO2016.dmg'
  name 'ORFO'
  name 'ОРФО'
  homepage 'http://www.orfo.ru/'

  auto_updates true
  conflicts_with cask: 'orfo-plus'

  pkg 'ORFO2016.pkg'

  uninstall pkgutil:    [
                          'com.informatic.pkg.orfo2014',
                          'com.informatic.pkg.seticon',
                          'com.informatic.pkg.startpp',
                        ],
            delete:     '/Library/PreferencePanes/ORFOSetup.prefPane',
            login_item: 'OrfoUpdate'

  zap delete: '~/Library/Caches/com.informatic.OrfoUpdate',
      trash:  [
                '/Library/Application Support/ORFO 2016',
                '~/Library/Preferences/com.informatic.RussianCollection.plist',
              ]

  caveats do
    reboot
  end
end
