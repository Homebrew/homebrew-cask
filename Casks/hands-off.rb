cask 'hands-off' do
  version '3.2.9'
  sha256 '218bf7f5f68bcdaa3cf4a3974b42f36b70a8a57efc3c2bc6638c517ec2f3c845'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml"
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
