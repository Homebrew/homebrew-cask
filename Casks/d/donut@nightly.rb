cask "donut@nightly" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version :latest
  sha256 :no_check

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
    app_image "Donut_nightly_#{arch}.AppImage", target: "Donut.AppImage"
  end

  url "https://github.com/zhom/donutbrowser/releases/download/nightly/Donut_nightly_#{arch}.#{url_end}"
  name "Donut Browser Nightly"
  desc "Anti-detect web browser"
  homepage "https://donutbrowser.com/"

  conflicts_with cask: "donut"
end
