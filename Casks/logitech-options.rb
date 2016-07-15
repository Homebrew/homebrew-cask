cask 'logitech-options' do
  version '5.60.15'
  sha256 '6ea4e1c157465362d50499a3336da9410a119bc63a98114b28dc51cebd0ddb5b'

  url "http://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name 'Logitech Options'
  homepage 'https://support.logitech.com/en_us/software/options-mac'
  license :closed

  depends_on macos: '>= :mountain_lion'

  pkg 'LogiMgr Installer.app/Contents/Resources/LogiMgr.mpkg'

  uninstall script:  {
                       executable: '/Applications/Utilities/LogiMgr Uninstaller.app/Contents/Resources/Uninstaller',
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
