cask 'logitech-unifying' do
  version '1.2.359'
  sha256 'e6fd9c1b536033f3346b32c391bd58587ea9f549cab7839cf8a1dbc62a739825'

  url "http://www.logitech.com/pub/controldevices/unifying/unifying#{version}_mac.zip"
  name 'Logitech Unifying Software'
  homepage 'https://www.logitech.com/en-us/promotions/6072'

  pkg 'Unifying Installer.app/Contents/Resources/Logitech Unifying Signed.mpkg'

  uninstall pkgutil: [
                       'com.Logitech.Unifying Software.pkg',
                       'com.Logitech.Updater.pkg',
                     ]
end
