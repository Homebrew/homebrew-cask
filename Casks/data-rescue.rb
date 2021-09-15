cask "data-rescue" do
  version "6.0.5,6212.14.08"
  sha256 "e5964d3ff514915de923d8c843530f318cb40c5b278cbe96dd8fefa3b67b737f"

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
