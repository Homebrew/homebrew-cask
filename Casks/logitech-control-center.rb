cask 'logitech-control-center' do
  version '3.9.5.66'
  sha256 '4eb24d61d50ca3bb83b62c2cc965affa7d03eb247c38a8810f149d20edfab0df'

  url "https://www.logitech.com/pub/techsupport/mouse/mac/lcc#{version}.zip"
  name 'Logitech Control Center'
  homepage 'https://support.logitech.com/en_us/product/3129'

  pkg 'LCC Installer.app/Contents/Resources/Logitech Control Center.mpkg'

  uninstall script:  {
                       executable: 'LCC Installer.app/Contents/Resources/LCC Uninstaller Tool',
                     },
            pkgutil: [
                       'com.Logitech.Control Center.pkg',
                       'com.Logitech.Unifying Software.pkg',
                       'com.Logitech.Updater.pkg',
                     ]
end
