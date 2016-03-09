cask 'logitech-options' do
  version '5.40.22'
  sha256 '7761222d349dc5fe9cb94b12ae517cfab0d5419d10ab2e92f7e8d172d81c8670'

  url "http://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name 'Logitech Options'
  homepage 'https://support.logitech.com/en_us/software/options-mac'
  license :closed

  depends_on macos: '>= :mountain_lion'

  pkg 'LogiMgr Installer.app/Contents/Resources/LogiMgr.mpkg'

  uninstall script:  '/Applications/Utilities/LogiMgr Uninstaller.app/Contents/Resources/Uninstaller',
            pkgutil: [
                       'com.logitech.manager.pkg',
                       'com.Logitech.signedKext.pkg',
                     ]

  caveats do
    reboot
  end
end
