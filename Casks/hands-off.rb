cask 'hands-off' do
  version '4.0.2'
  sha256 'd404d5aba3e69245f34d45c965f0e46bda5d95d0f3a3fb1af2ac3bd7bcbf95cb'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml"
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
