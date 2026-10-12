cask "donut" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.33.0"
  sha256 arm:          "6f4420e93f7bea5097dba75083db89d0f06d47cd1a0c0f416657550b2c610ee9",
         intel:        "082ee5c53582b54f6e8df010860b7444011351bcc21d604b459707779451fa1c",
         arm64_linux:  "290ce814e22274266131bef5aa64701a264b5eafee978638f893d3f60483fe6d",
         x86_64_linux: "635134ba0fd9f12d08600d8d158b63adad2ed083f3f6aa8d0a4408bda3af4848"

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
