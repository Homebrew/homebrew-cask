cask 'data-rescue' do
  version '5.0.10'
  sha256 'f4862181dc3e411a7197b74d6b1eace4ca3674691cfe08acd65f127ef87862c5'

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version}.dmg"
  appcast "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_updates_mac.xml"
  name "Data Rescue #{version.major}"
  homepage 'https://www.prosofteng.com/data-rescue-recovery-software/'

  app 'Data Rescue.app'
end
