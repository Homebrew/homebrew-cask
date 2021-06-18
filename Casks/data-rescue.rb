cask "data-rescue" do
  version "6.0.4,6210.63.02"
  sha256 "5c77a271e30fbbc4eac136ed5f9a6971d7db07593b904e86edecbe9667b1c2a1"

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
