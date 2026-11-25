cask "clash-mi" do
  url_end = on_system_conditional macos: "macos_universal.dmg", linux: "linux_amd64.AppImage"

  version "1.0.33.1905"
  sha256 arm:          "ce582b557fc954e51e4c9e8612f0075b0fb13dcd250c5c63cc30fef2ca3525f7",
         intel:        "ce582b557fc954e51e4c9e8612f0075b0fb13dcd250c5c63cc30fef2ca3525f7",
         x86_64_linux: "8ad05a3216afe9c127c6201e6af0ddd46384c2008f4b683fd40adc1ae5a252e3"

  on_macos do
    depends_on macos: :monterey

    app "Clash Mi.app"

    zap trash: [
      "~/Library/Application Scripts/com.nebula.clashmi",
      "~/Library/Application Scripts/group.com.nebula.clashmi",
      "~/Library/Application Support/clashmi",
      "~/Library/Caches/com.nebula.clashmi",
      "~/Library/Containers/com.nebula.clashmi",
      "~/Library/Group Containers/group.com.nebula.clashmi",
      "~/Library/Preferences/com.nebula.clashmi.plist",
      "~/Library/Saved Application State/com.nebula.clashmi.savedState",
      "~/Library/WebKit/com.nebula.clashmi",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "clashmi_#{version}_linux_amd64.AppImage", target: "Clash Mi.AppImage"

    zap trash: "~/.local/share/com.nebula.clashmi"
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
