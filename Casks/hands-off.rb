cask 'hands-off' do
  version '4.4.0'
  sha256 'a4aa07a33ca903723ecda64c6b28d7dcdee183a94a03fb2f86c38a53b94f40e2'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml"
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
