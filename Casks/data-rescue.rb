cask "data-rescue" do
  version "6.0.3"
  sha256 "bf4754f2d20c347d3d3470a57abdb0a92881d603a5a310fd0a11cea0242c9888"

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version}.dmg"
  appcast "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_updates_mac.xml"
  name "Data Rescue #{version.major}"
  desc "Data recovery software"
  homepage "https://www.prosofteng.com/data-rescue-recovery-software/"

  app "Data Rescue.app"
end
