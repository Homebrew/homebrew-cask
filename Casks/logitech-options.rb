cask 'logitech-options' do
  version '6.00.3356'
  sha256 '0e34082e5810e811b886e795b2c3d4c19c5ddf5a9b343744aa71126a5eb48d4d'

  url "http://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name 'Logitech Options'
  homepage 'https://support.logitech.com/en_us/software/options'
  license :closed

  depends_on macos: '>= :mavericks'

  pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.mpkg"

  uninstall script:  {
                       executable: '/Applications/Utilities/Logitech Options Uninstaller.app/Contents/Resources/Uninstaller',
                       sudo:       false,
                     },
            pkgutil: [
                       'com.logitech.manager.pkg',
                       'com.Logitech.signedKext.pkg',
                     ]

  caveats do
    reboot
  end
end
