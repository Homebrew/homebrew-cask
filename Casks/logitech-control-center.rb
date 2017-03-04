cask 'logitech-control-center' do
  if MacOS.version <= :leopard
    version '3.5.1.23'
    sha256 'b0b944edcb7549ff94d150d7caf72fb662fe825e3c829642c242180f4478d1ca'
    url 'http://www.logitech.com/pub/techsupport/mouse/mac/lcc351.zip'
  elsif MacOS.version <= :lion
    version '3.9.1.b20'
    sha256 'e2c938286c4044bc6b83a7455f659e99d5854572d308cd6a9befd39eaed57d6c'
  elsif MacOS.version <= :mountain_lion
    version '3.9.4'
    sha256 '0be19f691ad562cf143197bfd54c02183888c55842eb19a3bd644406acb3910d'
    url "https://www.logitech.com/pub/techsupport/mouse/mac/lcc#{version}.zip"
  else
    version '3.9.5.66'
    sha256 '4eb24d61d50ca3bb83b62c2cc965affa7d03eb247c38a8810f149d20edfab0df'
    url "https://www.logitech.com/pub/techsupport/mouse/mac/lcc#{version}.zip"
  end

  name 'Logitech Control Center'
  homepage 'https://support.logitech.com/en_us/product/3129'

  pkg 'LCC Installer.app/Contents/Resources/Logitech Control Center.mpkg'

  uninstall script:  {
                       executable: 'LCC Installer.app/Contents/Resources/LCC Uninstaller Tool',
                       sudo:       false,
                     },
            pkgutil: [
                       'com.Logitech.Control Center.pkg',
                       'com.Logitech.Unifying Software.pkg',
                       'com.Logitech.Updater.pkg',
                     ]
end
