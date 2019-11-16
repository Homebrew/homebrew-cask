cask 'data-rescue' do
  version '5.0.11'
  sha256 '04025ee898a72c68b809e9722a197dd395b4e1100a9b5b2aafc35fe704749c87'

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version}.dmg"
  appcast "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_updates_mac.xml"
  name "Data Rescue #{version.major}"
  homepage 'https://www.prosofteng.com/data-rescue-recovery-software/'

  app 'Data Rescue.app'
end
