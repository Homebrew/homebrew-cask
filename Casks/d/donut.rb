cask "donut" do
  version "0.14.4"
  sha256 "94bde17780bf28cb0968d83895820d7574cfd4436e4a8bab6b9bc2896adfbd01"

  url "https://github.com/zhom/donutbrowser/releases/download/v#{version}/Donut_#{version}_aarch64.dmg",
      verified: "github.com/zhom/donutbrowser/"
  name "Donut Browser"
  desc "Simple yet powerful anti-detect browser"
  homepage "https://donutbrowser.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "donut@nightly"
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
