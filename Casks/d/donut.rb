cask "donut" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.30.0"
  sha256 arm:          "76190a9133190925fb7c40440bbdf64b6901d00af17b1054636d35dc8d3cbebc",
         intel:        "a4a1898831fa1c41c94d6e3500f4df48f3dc59b92d19ae305898b0bf9895d97b",
         arm64_linux:  "28b65ef9581c7bd282cda7151129c2925783eb1ef265b5a87dd302ac78e52631",
         x86_64_linux: "55cb3b67259439c9f2f998e8c683f953a95a3935dba8c14076bf836400547893"

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
