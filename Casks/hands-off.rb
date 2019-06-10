cask 'hands-off' do
  version '4.2.1'
  sha256 '390aeea101b36a878511a0bcb1a7e2547a0adc4fe929380fb8fd1eb17f518f0b'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml"
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
