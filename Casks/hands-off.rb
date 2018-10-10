cask 'hands-off' do
  version '4.0.0'
  sha256 'b3ce928dcd3b9d47399cb69384d2705aa05cbba01ed563b9629d954da9abda2b'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml"
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
