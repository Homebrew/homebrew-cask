cask 'logitech-options' do
  version '8.10.64'
  sha256 'f13a44149b3da9922412237b79fbc2323c63bb263f484f31a1e5d1fe9d2c3534'

  # download01.logi.com/web/ftp/pub/techsupport/options was verified as official when first introduced to the cask
  url "https://download01.logi.com/web/ftp/pub/techsupport/options/Options_#{version.major_minor_patch}.zip"
  name 'Logitech Options'
  homepage 'https://www.logitech.com/en-us/product/options'

  auto_updates true

  installer manual: 'Logi Options Installer.app'

  uninstall delete:     '/Applications/Logi Options',
            login_item: 'LogiOptions',
            signal:     [
                          ['KILL', 'Logi Options'],
                        ]

  zap trash: [
               '/Library/Application Support/Logitech.localized/Logitech Options.localized',
               '~/Library/Preferences/com.logitech.Logi-Options.plist',
             ]
end
