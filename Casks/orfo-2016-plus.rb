cask 'orfo-2016-plus' do
  version '16.2.2'
  sha256 '04af9b8553f30ed21adac1f370c2077ab0338558231f1a8e26131dc4908f2996'

  url 'http://www.orfo.ru/download/ORFO2016Plus.dmg'
  name 'orfo-2016-plus'
  homepage 'http://www.orfo.ru'

  conflicts_with formula: 'orfo-2016'

  pkg 'ORFO2016Plus.pkg'

  uninstall pkgutil:    [
                          'com.informatic.pkg.orfo2016',
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
