cask 'logos' do
  version '8.13.0.0008'
  sha256 '42e00d4d0c7e579d3673196ccabc8ce3b758eb70da4028bc5e1f7ba03fa2879c'

  # downloads.logoscdn.com/ was verified as official when first introduced to the cask
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
