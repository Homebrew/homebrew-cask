cask "shottr" do
  version "1.5.1"
  sha256 "36d47babf71a4663aabae280b3a196ca9df64eb3200bfaf1cb30e6139f01a743"

  url "https://shottr.cc/dl/Shottr-#{version}.dmg"
  name "Shottr"
  desc "Screenshot measurement and annotation tool"
  homepage "https://shottr.cc/"

  livecheck do
    url :homepage
    regex(/Shottr-(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Shottr.app"

  zap trash: [
    "~/Library/Application Scripts/cc.ffitch.shottr",
    "~/Library/Application Scripts/cc.ffitch.shottr-LaunchAtLoginHelper",
    "~/Library/Containers/cc.ffitch.shottr",
    "~/Library/Containers/cc.ffitch.shottr-LaunchAtLoginHelper",
  ]
end
