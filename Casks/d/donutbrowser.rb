cask "donutbrowser" do
  version "0.14.3"
  sha256 "f812cbec4c25bad3e129c4787e858d5ec411447c4d9b5fa0e14a42e88ded9061"

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
  conflicts_with cask: "donutbrowser@nightly"
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
