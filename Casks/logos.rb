cask 'logos' do
  version '8.12.0.0017'
  sha256 '3900d550dc7dab9232d8f51f15b4de838b3fb4039da23eb7a84ec58f1f7696db'

  # downloads.logoscdn.com was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/LBS8/Installer/#{version}/LogosMac.dmg"
  appcast "https://clientservices.logos.com/update/v1/feed/logos#{version.major}-mac/stable.xml"
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
