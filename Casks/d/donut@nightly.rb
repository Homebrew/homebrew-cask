cask "donut@nightly" do
  arch arm: "aarch64", intel: "x64"

  version :latest
  sha256 :no_check

  url "https://github.com/zhom/donutbrowser/releases/download/nightly/Donut_nightly_#{arch}.dmg",
      verified: "github.com/zhom/donutbrowser/"
  name "Donut Browser Nightly"
  desc "Anti-detect web browser"
  homepage "https://donutbrowser.com/"

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
