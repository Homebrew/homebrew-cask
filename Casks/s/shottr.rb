cask "shottr" do
  version "1.10.0b"
  sha256 "2294be936928096f328fae2f82583c765cf5352c28b6942eabaed1cbf61369b4"

  url "https://shottr.cc/dl/Shottr-#{version}.dmg"
  name "Shottr"
  desc "Screenshot measurement and annotation tool"
  homepage "https://shottr.cc/"

  livecheck do
    url "https://shottr.cc/newversion.html"
    regex(/href=.*?Shottr[._-]v?(\d+(?:\.\d+)+[a-z]?)\.dmg/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Shottr.app"

  uninstall quit: "cc.ffitch.shottr"

  zap trash: [
    "~/Library/Application Scripts/cc.ffitch.shottr",
    "~/Library/Application Scripts/cc.ffitch.shottr-LaunchAtLoginHelper",
    "~/Library/Containers/cc.ffitch.shottr",
    "~/Library/Containers/cc.ffitch.shottr-LaunchAtLoginHelper",
  ]
end
