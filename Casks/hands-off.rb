cask 'hands-off' do
  version '4.1.0'
  sha256 'aadb288f73fd927628320bf9231f2efbea5c4ff15116dd619250c05ecbe8748b'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml"
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
