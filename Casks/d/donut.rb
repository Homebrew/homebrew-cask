cask "donut" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.29.6"
  sha256 arm:          "86edbbc13210102707ba95e422bafe61466c391bf32eb3bdd41418c4bea4cb35",
         intel:        "f68b8de14c07d9bd89d084bcff089ff2f40bf2b07e3daf0e3f34995e525c1a3c",
         arm64_linux:  "e455997840a2c6534dc47b86ccaa0dc661c38cdb5e3d4d328346e00cb0f5b397",
         x86_64_linux: "b59b542c084a9741da88a8f8594657e299338db3ed392feb8a85cf8ebae6e179"

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
