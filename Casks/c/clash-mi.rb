cask "clash-mi" do
  url_end = on_system_conditional macos: "macos_universal.dmg", linux: "linux_amd64.AppImage"

  version "1.0.27.1301"

  on_macos do
    sha256 "83272835366c77aad4f20bd584a25dd8f1baf87921d7c8ce11a1cbf27263dc6c"

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
    sha256 "529ddbea93b6131e29688d0679b07a7a2b0439e76240c191e8012eeb52535dd5"

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
