cask "openwhispr" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: ".dmg", linux: "-linux-x86_64.AppImage"

  version "1.12.2"
  sha256 arm:          "324f3b071dc21325701a6b25f0672b29c5829f191e850d2eb09516d8bb1179ea",
         intel:        "3ec428b4fb0c2a588d4a9f3ea3c115f384742ce7aa29707eb21cd62cf6515255",
         x86_64_linux: "9be930e031d09cec4f9d5d418235299f34e22b17172d40a7d1c251191bb991a8"

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
