cask "data-rescue" do
  version "6.0.0"
  sha256 "3b317918752603a116d34126fe5ef1894de7370b747046438a18b4295dce2fd9"

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version}.dmg"
  appcast "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_updates_mac.xml"
  name "Data Rescue #{version.major}"
  homepage "https://www.prosofteng.com/data-rescue-recovery-software/"

  app "Data Rescue.app"
end
