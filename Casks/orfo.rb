cask 'orfo' do
  version :latest
  sha256 :no_check

  url 'http://www.orfo.ru/download/ORFO2016.dmg'
  name 'ORFO'
  name 'ОРФО'
  homepage 'http://www.orfo.ru'

  conflicts_with cask: 'orfo-plus'

  pkg 'ORFO2016.pkg'

  uninstall pkgutil:    [
                          'com.informatic.pkg.orfo2014',
                          'com.informatic.pkg.seticon',
                          'com.informatic.pkg.startpp',
                        ],
            delete:     '/Library/PreferencePanes/ORFOSetup.prefPane',
            login_item: 'OrfoUpdate'

  zap delete: '/Library/Application Support/ORFO 2016'

  caveats do
    reboot
  end
end
