cask "shottr" do
  version "1.9.3b"
  sha256 "9debebb9b91a9dfe2c493dc1f5ddc78a2ad25ad5ebbacfca60b7985dc15820de"

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

  zap trash: [
    "~/Library/Application Scripts/cc.ffitch.shottr",
    "~/Library/Application Scripts/cc.ffitch.shottr-LaunchAtLoginHelper",
    "~/Library/Containers/cc.ffitch.shottr",
    "~/Library/Containers/cc.ffitch.shottr-LaunchAtLoginHelper",
  ]
end
