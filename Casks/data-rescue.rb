cask "data-rescue" do
  version "6.0.3,6203.37.11"
  sha256 "bf4754f2d20c347d3d3470a57abdb0a92881d603a5a310fd0a11cea0242c9888"

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version.before_comma}.dmg"
  name "Data Rescue #{version.major}"
  desc "Data recovery software"
  homepage "https://www.prosofteng.com/data-rescue-recovery-software/"

  livecheck do
    url "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_updates_mac.xml"
    strategy :sparkle
  end

  app "Data Rescue.app"
end
