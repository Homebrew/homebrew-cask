cask "clash-mi" do
  url_end = on_system_conditional macos: "macos_universal.dmg", linux: "linux_amd64.AppImage"

  version "1.0.31.1703"
  sha256 arm:          "4b36d2e002540a2ac9d4cc7b35e0e384e27a7fa40f5f9122ac5e90cf594c6d6b",
         intel:        "4b36d2e002540a2ac9d4cc7b35e0e384e27a7fa40f5f9122ac5e90cf594c6d6b",
         x86_64_linux: "b5e2ee38fe8d48e13d4cff1df88449aed704083a5fbb92cc0e53b0fa5664bdcd"

  on_macos do
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
