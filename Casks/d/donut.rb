cask "donut" do
  arch arm: "aarch64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "13dc50c7391bd79c5a23214a3af34fcb40fcd32d1a41cfa277bea7b1b67334ce",
         intel: "edb5a95b2d7823b239fe9016a6ff5568ab2b76a77159ecdd3dc7e47b48d2a47a"

  url "https://github.com/zhom/donutbrowser/releases/download/v#{version}/Donut_#{version}_#{arch}.dmg",
      verified: "github.com/zhom/donutbrowser/"
  name "Donut Browser"
  desc "Anti-detect web browser"
  homepage "https://donutbrowser.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "donut@nightly"
  depends_on macos: ">= :big_sur"

  app "Donut.app"

  uninstall quit: "com.donutbrowser"

  zap trash: [
    "~/Library/Application Support/com.donutbrowser.Donut-Browser",
    "~/Library/Application Support/DonutBrowser",
    "~/Library/Caches/com.donutbrowser",
    "~/Library/Caches/DonutBrowser",
    "~/Library/LaunchAgents/com.donutbrowser.daemon.plist",
    "~/Library/Logs/com.donutbrowser",
    "~/Library/Preferences/com.donutbrowser.plist",
    "~/Library/WebKit/com.donutbrowser",
  ]
end
