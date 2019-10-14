cask 'logos' do
  version '8.8.0.0046'
  sha256 'f106f024406f6571f1e763b815d79c1c44c0fae77f1fa429f39a2ecb800ff841'

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
