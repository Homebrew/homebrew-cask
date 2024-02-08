cask "rclone-browser" do
  version "1.2,a1156a0"
  sha256 "542cd23eea128736999a7e512a9f2ff89be081c688d1581e6c78ab3d3ca118dd"

  url "https://github.com/mmozeiko/RcloneBrowser/releases/download/#{version.csv.first}/rclone-browser-#{version.csv.first}-#{version.csv.second}-macOS.zip",
      verified: "github.com/mmozeiko/RcloneBrowser/"
  name "Rclone Browser"
  desc "GUI for rclone"
  homepage "https://martins.ninja/RcloneBrowser/"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on formula: "rclone"

  app "rclone-browser-#{version.csv.first}-#{version.csv.second}-macOS/Rclone Browser.app"

  zap trash: [
    "~/Library/Preferences/com.rclone-browser.rclone-browser.plist",
    "~/Library/Preferences/Rclone Browser.plist",
  ]
end
