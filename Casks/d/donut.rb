cask "donut" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.29.4"
  sha256 arm:          "55d577a3865bd55ffd9f6595380fcdb8e91f3f2e8d29e303646c9bd88be7de8c",
         intel:        "7977c602cb6bcba89f5ee380c1815bc70a353ad086505da156ce8f24c4fd4b4d",
         arm64_linux:  "76ec3794344b1fbad884e5a7e522a7d5b7afb142032e65c4b3ec27c9e88db757",
         x86_64_linux: "63d1e9bf0b155d0e20838bd430fb23b4b11de18bbcb0b2bf5b4f669e0b4f6a32"

  on_macos do
    depends_on macos: :big_sur

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

  url "https://github.com/zhom/donutbrowser/releases/download/v#{version}/Donut_#{version}_#{arch}.#{url_end}",
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
end
