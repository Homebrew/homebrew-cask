cask 'hands-off' do
  version '3.2.8'
  sha256 '1a45d30b5dfd05edd416414c2f6f4c845ca8ce7df6ae7c0d00e4ab047a339d22'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml"
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
