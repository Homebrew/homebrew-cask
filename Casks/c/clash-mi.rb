cask "clash-mi" do
  url_end = on_system_conditional macos: "macos_universal.dmg", linux: "linux_amd64.AppImage"

  version "1.0.30.1605"
  sha256 arm:          "c3461c56cbe8862afb114b5a09073cce0608a93685e63e9e2239da0061881f66",
         intel:        "c3461c56cbe8862afb114b5a09073cce0608a93685e63e9e2239da0061881f66",
         x86_64_linux: "10624cffc75a1ce0ca10d47a13f7fe6a783d85b67e49a32306377db1cab2ab75"

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
