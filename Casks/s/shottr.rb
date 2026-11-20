cask "shottr" do
  version "1.10.0"
  sha256 "9ed7776edb919840f6a270154c3be780d7be5420c03201c22e4823c5d855d76d"

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
