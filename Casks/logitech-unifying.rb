cask 'logitech-unifying' do
  version '1.2.315'
  sha256 '9106336cc0f640d17a8352a2376652f6e16fd02be584f9c33d41999dfc00d0a8'

  url "http://www.logitech.com/pub/controldevices/unifying/unifying#{version}_mac.zip"
  name 'Logitech Unifying Software'
  homepage 'https://www.logitech.com/en-us/promotions/6072'

  pkg 'Unifying Installer.app/Contents/Resources/Logitech Unifying Signed.mpkg'

  uninstall pkgutil: [
                       'com.Logitech.Unifying Software.pkg',
                       'com.Logitech.Updater.pkg',
                     ]
end
