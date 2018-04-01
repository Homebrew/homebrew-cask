cask 'hands-off' do
  version '3.2.6'
  sha256 '5d87db60eb69e7d4ff23de60a785607775c0a7b355bda322f9dfac3369993ad2'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: '724cd6190abb2f91affac55868725810b2e29bb4751e3b91d2cb5bab18e9b476'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
