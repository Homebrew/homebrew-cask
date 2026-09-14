cask "openwhispr" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: ".dmg", linux: "-linux-x86_64.AppImage"

  version "1.10.1"
  sha256 arm:          "e77bafa0e223cdc57bfc030a313cb159823abad6868e462e2ae41d96e8f98a46",
         intel:        "d88b5b2d021acf150d88fe28070f004902b94711c19912950e758dffb4ef9511",
         x86_64_linux: "be571640766227476420fb29ce7f0655d7d2937dbd332960d53c358c9f2c5136"

  on_macos do
    depends_on macos: :monterey

    app "OpenWhispr.app"
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "OpenWhispr-#{version}-linux-x86_64.AppImage", target: "OpenWhispr.AppImage"
  end

  url "https://github.com/OpenWhispr/openwhispr/releases/download/v#{version}/OpenWhispr-#{version}#{arch}#{url_end}"
  name "OpenWhispr"
  desc "Privacy-first voice-to-text dictation with AI agents"
  homepage "https://github.com/OpenWhispr/openwhispr"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  zap trash: [
    "~/.cache/openwhispr",
    "~/.config/autostart/open-whispr.desktop",
    "~/.config/open-whispr",
    "~/.local/share/icons/hicolor/256x256/apps/open-whispr.png",
    "~/.openwhispr",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gizmolabs.openwhispr.sfl*",
    "~/Library/Application Support/open-whispr",
    "~/Library/Caches/com.gizmolabs.openwhispr",
    "~/Library/Caches/com.gizmolabs.openwhispr.ShipIt",
    "~/Library/Caches/open-whispr-updater",
    "~/Library/HTTPStorages/com.gizmolabs.openwhispr",
    "~/Library/Preferences/ByHost/com.gizmolabs.openwhispr.ShipIt.*.plist",
    "~/Library/Preferences/com.gizmolabs.openwhispr.plist",
    "~/Library/Saved Application State/com.gizmolabs.openwhispr.savedState",
  ]
end
