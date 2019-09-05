cask 'logos' do
  version '8.7.0.0042'
  sha256 '7900cfc970888b1a30ced41131211bdaaf340fcb657268c2d8dc0742a291098e'

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
