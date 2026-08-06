cask "clash-mi" do
  url_end = on_system_conditional macos: "macos_universal.dmg", linux: "linux_amd64.AppImage"

  version "1.0.28.1404"

  on_macos do
    sha256 "3415f147e3eb9df4f8d750b5353fcbe2bfc6573ac150392ca658ad8a65dbc5d4"

    depends_on macos: :monterey

    app "Clash Mi.app"

    zap trash: [
      "~/Library/Application Support/clashmi",
      "~/Library/Caches/com.nebula.clashmi",
      "~/Library/Preferences/com.nebula.clashmi.plist",
      "~/Library/Saved Application State/com.nebula.clashmi.savedState",
      "~/Library/WebKit/com.nebula.clashmi",
    ]
  end
  on_linux do
    sha256 "4a586460404f85ae3ca947f1ab006adfe7631d62bdb4a0be3592d1cdbf11d1f1"

    depends_on arch: :x86_64

    app_image "clashmi_#{version}_linux_amd64.AppImage", target: "Clash Mi.AppImage"
  end

  url "https://github.com/KaringX/clashmi/releases/download/v#{version}/clashmi_#{version}_#{url_end}"
  name "Clash Mi"
  desc "Another Mihomo GUI based on Flutter"
  homepage "https://github.com/KaringX/clashmi"

  livecheck do
    url :url
    strategy :github_latest
  end
end
