cask "shottr" do
  version "1.6.1"
  sha256 "dd022de05108a282c83a9d12f7faecaab90d1b4b4646e8b9cadcd5411f1d28b0"

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
