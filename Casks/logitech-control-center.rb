cask :v1 => 'logitech-control-center' do
  version '3.9.1.b20'
  sha256 'e2c938286c4044bc6b83a7455f659e99d5854572d308cd6a9befd39eaed57d6c'

  url "http://www.logitech.com/pub/techsupport/mouse/mac/lcc#{version}.zip"
  homepage 'http://support.logitech.com/en_us/product/3129'
  license :unknown

  pkg 'LCC Installer.app/Contents/Resources/Logitech Control Center.mpkg'

  uninstall :script => 'LCC Installer.app/Contents/Resources/LCC Uninstaller Tool',
            :pkgutil => [
                        'com.Logitech.Control Center.pkg',
                        'com.Logitech.Unifying Software.pkg',
                        'com.Logitech.Updater.pkg',
                        ]
end
