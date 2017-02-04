cask 'orfo-2016' do
  version '16.2.2'
  sha256 '0f03bfb68bd6120504fbaee922ec7773f9a24aa542fa4dab271625631ac5bf61'

  url 'http://www.orfo.ru/download/ORFO2016.dmg'
  name 'orfo-2016'
  homepage 'http://www.orfo.ru'

  conflicts_with formula: 'orfo-2016-plus'

  pkg 'ORFO2016.pkg'

  uninstall pkgutil:    [
                          'com.informatic.pkg.orfo2014',
                          'com.informatic.pkg.seticon',
                          'com.informatic.pkg.startpp',
                        ],
            delete:     '/Library/PreferencePanes/ORFOSetup.prefPane',
            login_item: 'OrfoUpdate'

  zap delete: '/Library/Application Support/ORFO 2016'

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the terms of the software
    license agreement
  EOS
  caveats do
    reboot
  end
end
