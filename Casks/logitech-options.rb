cask :v1 => 'logitech-options' do
  version '5.30.150'
  sha256 'e35af623158ef65ad4b142d0fca80cd8d522dacd17f806f6d161fa4f7411f55b'

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
