cask 'logitech-options' do
  version '6.30.48'
  sha256 '74b76722b668724233ba17a627e7f566289cf48df1235dbd8606f4a1eab5c805'

  url "http://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name 'Logitech Options'
  homepage 'https://support.logitech.com/en_us/software/options'

  depends_on macos: '>= :mavericks'

  pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.mpkg"

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
