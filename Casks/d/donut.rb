cask "donut" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.31.3"
  sha256 arm:          "45d69e0c0a1ed6d07629b4c322e445c1b054f276b4ed424acdd2414f147a5e54",
         intel:        "b5c636d117c9912cf582ebbf019a7427f0b67fda7c7d150f3386001c112d0487",
         arm64_linux:  "944d9bb626efabde9b6732952908a87f04c8c2b9aed3efd2198a3788b856e678",
         x86_64_linux: "f4033f64f9c58a10ab5bd1dcd3bd9eebddbf255f2f3372146bb91332bec1de3b"

  on_macos do
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
  on_linux do
    app_image "Donut_#{version}_#{arch}.AppImage", target: "Donut.AppImage"
  end

  url "https://github.com/zhom/donutbrowser/releases/download/v#{version}/Donut_#{version}_#{arch}.#{url_end}"
  name "Donut Browser"
  desc "Anti-detect web browser"
  homepage "https://donutbrowser.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "donut@nightly"
end
