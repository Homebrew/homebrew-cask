cask 'data-rescue' do
  version '5.0.7'
  sha256 '2fec60663055ccb708c07f6b8eb1843951e3db1d0abd4c6e0c8425a69890bcfb'

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version}.dmg"
  appcast "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_updates_mac.xml"
  name "Data Rescue #{version.major}"
  homepage 'https://www.prosofteng.com/data-rescue-recovery-software/'

  app 'Data Rescue.app'
end
