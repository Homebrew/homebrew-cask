cask "shottr" do
  version "1.6.2"
  sha256 "56e747c35f9d2f1eed7d612b8551a6123cb2075c45bd46d493b822ee5f0d1ca6"

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
