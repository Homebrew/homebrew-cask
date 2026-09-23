cask "donut" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.31.1"
  sha256 arm:          "e794007c23537ad2732768850c682cd0c2314b34810c5ded712b055733b9e8f1",
         intel:        "0fe301f64863b8874629f58a2a60cdcd07a73616bb4a294d4dee1d1e7ea0ee0b",
         arm64_linux:  "2433fe7e2de68ebd4af06090e683e80271e0889d8296a538c4ffdad6e077cbe4",
         x86_64_linux: "0578da20299cad6751e20b642cbbbd6d5e1e7641c709757fd0f23c0da1e58e33"

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
