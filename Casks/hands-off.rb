cask 'hands-off' do
  version '4.4.1'
  sha256 '76f796f04ad39b6c70e7f8306ef917fc88d0a663c2a6d6b8e3f51376c0a066bc'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml"
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
