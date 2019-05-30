cask 'logos' do
  version '8.5.0.0026'
  sha256 '4a1c9d9eef3f51f40b1fb85e3e33783e5e5fb5b5283cdd0f6ddc59acce71902b'

  # downloads.logoscdn.com was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/LBS8/Installer/#{version}/LogosMac.dmg"
  appcast 'https://clientservices.logos.com/update/v1/feed/logos8-mac/stable.xml'
  name 'Logos Bible Software'
  homepage 'https://www.logos.com/'

  depends_on macos: '>= :el_capitan'

  app 'Logos.app'

  uninstall launchctl: 'com.logos.LogosIndexer',
            quit:      'com.logos.Logos'

  zap trash: [
               '~/Library/Preferences/com.logos.LogosIndexer.plist',
               '~/Library/Preferences/com.logos.LogosCEF.plist',
               '~/Library/Preferences/com.logos.Logos.plist',
             ]
end
