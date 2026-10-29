cask "openwhispr" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: ".dmg", linux: "-linux-x86_64.AppImage"

  version "1.11.0"
  sha256 arm:          "10a320cba0de83895ffab8dce8a9d118e6eb85a14289e861770e4edcc43488db",
         intel:        "aec727c9c94ce58d29edad59eba7eedece3c79faa82feff47c278acdcffefc20",
         x86_64_linux: "7c8f110985726effec0d2ae6f0ac343b64f35f967e09fffdcfaa4bff0c29307e"

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
