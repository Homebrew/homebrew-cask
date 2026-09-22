cask "donut" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.31.0"
  sha256 arm:          "72d05fee7f371bef5a19839a1aee51f222ec0f6f5e8160f8fb65508ce52ffd5c",
         intel:        "6ac1c7e03e4198fafea3e92fbe1a5e047ff8d3d7d4a3d07b92fa710f58fae889",
         arm64_linux:  "22893ba8e1ca244a2f8aa3271c7e5b424092541d628b854dd7b812fe34b3b57d",
         x86_64_linux: "87650e4bd25aa7f1403c0c57ccd4fecd77263ed01b1f2f1234aec63df669089a"

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
