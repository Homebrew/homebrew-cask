cask "shottr-beta" do
  version "1.5.4"
  sha256 "7bd98a2fa710fafa87dc90ed459ae9af260ab6f7e16f508592a877c625900075"

  url "https://shottr.cc/dl/Shottr-#{version}-beta.dmg"
  name "Shottr"
  desc "Screenshot measurement and annotation tool"
  homepage "https://shottr.cc/"

  livecheck do
    url :homepage
    regex(/Shottr-(\d+(?:\.\d+)+)\.dmg/i)
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
