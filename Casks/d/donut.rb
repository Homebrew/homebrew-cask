cask "donut" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.32.0"
  sha256 arm:          "5e55e7773111cc94ee6fe8c1575a4d1f4154af3b8e1a16d76bc6a90d4afbcc0d",
         intel:        "7063ee19a98dec1968bc4f7b39ff286335fb16eb87f320e32ded7a8a3783db48",
         arm64_linux:  "80bcde4b5353c4a3b7c672da1edd8265f5d8df2a9353986f783cf8f2ce8eb520",
         x86_64_linux: "39dc3a0045573d0cbf3a8b4946f9b95ee22d056888a4ada2839ef3bbcf4947ee"

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
