cask "donutbrowser@nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/zhom/donutbrowser/releases/download/nightly/Donut_nightly_aarch64.dmg",
      verified: "github.com/zhom/donutbrowser/"
  name "Donut Browser Nightly"
  desc "Simple yet powerful anti-detect browser"
  homepage "https://donutbrowser.com/"

  conflicts_with cask: "donutbrowser"
  depends_on arch: :arm64
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
