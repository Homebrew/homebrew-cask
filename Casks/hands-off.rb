cask 'hands-off' do
  version '3.2.5'
  sha256 'a7395508749c7decc40d98e0b435233128f79970d31841c0973ed65669cc0455'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: 'ed3c97f0c4529e8747df3bf881c9245d2fbb3076abda9c530c022585386c564d'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
