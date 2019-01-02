cask 'hands-off' do
  version '4.0.1'
  sha256 'ea9a93fd9a0f48927a353c9f286e0d8265f3032d837867c97b47939d05b41403'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml"
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
