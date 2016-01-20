cask 'logitech-control-center' do
  if MacOS.release <= :leopard
    version '3.5.1.23'
    sha256 'b0b944edcb7549ff94d150d7caf72fb662fe825e3c829642c242180f4478d1ca'
    url 'http://www.logitech.com/pub/techsupport/mouse/mac/lcc351.zip'
  elsif MacOS.release <= :lion
    version '3.9.1.b20'
    sha256 'e2c938286c4044bc6b83a7455f659e99d5854572d308cd6a9befd39eaed57d6c'
  else
    version '3.9.3'
    sha256 '443e9d8733325b76cf97bc73abda464e1db9fcff52bf1f9b3ba67fd2c7200c00'
    url "http://www.logitech.com/pub/techsupport/mouse/mac/lcc#{version}.zip"
  end

  name 'Logitech Control Center'
  homepage 'https://support.logitech.com/en_us/product/3129'
  license :closed

  pkg 'LCC Installer.app/Contents/Resources/Logitech Control Center.mpkg'

  uninstall script:  'LCC Installer.app/Contents/Resources/LCC Uninstaller Tool',
            pkgutil: [
                       'com.Logitech.Control Center.pkg',
                       'com.Logitech.Unifying Software.pkg',
                       'com.Logitech.Updater.pkg',
                     ]
end
