cask :v1 => 'logitech-control-center' do
  version '3.9.0.60'
  sha256 '1eab6118dc5ad0b3c790b9132b5968050dab0117b07d8f338c471aff00078df1'

  url "http://www.logitech.com/pub/techsupport/mouse/mac/lcc#{version}.zip"
  homepage 'http://www.logitech.com'
  license :unknown

  pkg 'LCC Installer.app/Contents/Resources/Logitech Control Center.mpkg'

  uninstall :script => 'LCC Installer.app/Contents/Resources/LCC Uninstaller Tool',
            :pkgutil => [
                        'com.Logitech.Control Center.pkg',
                        'com.Logitech.Unifying Software.pkg',
                        'com.Logitech.Updater.pkg',
                        ]
end
