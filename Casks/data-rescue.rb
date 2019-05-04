cask 'data-rescue' do
  version '5.0.9'
  sha256 'eb99d6e6a2b050b1bfe8c40b9c5e14ccc6d72293db742974124d5d51f07ccf01'

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version}.dmg"
  appcast "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_updates_mac.xml"
  name "Data Rescue #{version.major}"
  homepage 'https://www.prosofteng.com/data-rescue-recovery-software/'

  app 'Data Rescue.app'
end
