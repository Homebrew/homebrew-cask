cask "clash-mi" do
  url_end = on_system_conditional macos: "macos_universal.dmg", linux: "linux_amd64.AppImage"

  version "1.0.32.1803"
  sha256 arm:          "fd0382f8d996f97ed65eadf634967e9c1eed4909ec181cd2a53d81b6280e5c17",
         intel:        "fd0382f8d996f97ed65eadf634967e9c1eed4909ec181cd2a53d81b6280e5c17",
         x86_64_linux: "8d1aee3cea3ea3a2863a145565a8af748ba56cc995236fec3ad34695196f612e"

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
