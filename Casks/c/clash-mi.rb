cask "clash-mi" do
  url_end = on_system_conditional macos: "macos_universal.dmg", linux: "linux_amd64.AppImage"

  version "1.0.30.1604"
  sha256 arm:          "4342af77ed58ff0e4e983fda4ea4061a94c1aa86b9274ac46b880530fd55278f",
         intel:        "4342af77ed58ff0e4e983fda4ea4061a94c1aa86b9274ac46b880530fd55278f",
         x86_64_linux: "23fca59d8aeaf0d136be6485e61f331a947f8cac329dec875b5413989340ef84"

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
