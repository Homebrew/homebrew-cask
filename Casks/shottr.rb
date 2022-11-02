cask "shottr" do
  version "1.6.1"
  sha256 "116613e1552558ee1bab86ffea6476b264b46164fbbdd94502ff4cd852840563"

  url "https://shottr.cc/dl/Shottr-#{version}.dmg"
  name "Shottr"
  desc "Screenshot measurement and annotation tool"
  homepage "https://shottr.cc/"

  livecheck do
    url "https://shottr.cc/api/version.json"
    strategy :page_match do |page|
      JSON.parse(page)["latestVersion"]
    end
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
