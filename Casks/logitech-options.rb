cask :v1 => 'logitech-options' do
  version '5.20.124'
  sha256 'b60890b63c8ed9a8c525ce7cb8db8c8d33add2d8945a82e15bc0e5f9c5e1187d'

  url "http://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name 'Logitech Options'
  homepage 'http://support.logitech.com/en_us/software/options-mac'
  license :closed

  pkg 'LogiMgr Installer.app/Contents/Resources/LogiMgr.mpkg'

  uninstall :script => '/Applications/Utilities/LogiMgr Uninstaller.app/Contents/Resources/Uninstaller',
            :pkgutil => [
                        'com.logitech.manager.pkg',
                        'com.Logitech.signedKext.pkg',
                        ]

  depends_on :macos => '>= :mountain_lion'

  caveats do
    reboot
  end
end
