cask 'hands-off' do
  version '4.4.2'
  sha256 'a7f1f82d70900f766b6d2a4e6bd33add78a71b3ee8145e5e426086b7a0a39a84'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml"
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
