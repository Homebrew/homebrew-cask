cask "donut" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.29.5"
  sha256 arm:          "3d69e16ec9a9c20f9ba9f3126636ffd9a9261af81eef69bbaa0a8242d521aedb",
         intel:        "a03c43bdd11662d0fcd1e3d2be7ce9f2face3e968e387c3ff0908eadbb0b23c9",
         arm64_linux:  "c36c626e7fc666aebcd6f6438fda5834eaf0867ab15f43ce86604ef173056fe7",
         x86_64_linux: "ff338519a1d39384b9dc32d97b60579882defcfd5d95bf5d4fde21caf12a5dc3"

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
