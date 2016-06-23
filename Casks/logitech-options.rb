cask 'logitech-options' do
  version '5.50.9'
  sha256 'c4f497f42805c73fdf76653d36b6a7f5a539521f4faa686d701395e75c711a08'

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
