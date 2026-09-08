cask "openwhispr" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: ".dmg", linux: "-linux-x86_64.AppImage"

  version "1.9.2"

  on_macos do
    sha256 arm:   "76c5a1f3a22dd478df6239ac9cb506cb4bd07b6d08c88861d14c4dd26806863d",
           intel: "8ce62f95fa5a1bb9526ad34114e891d16cd6631b1ba65b18ee9d41ea3909cd37"

    depends_on macos: :monterey

    app "OpenWhispr.app"
  end
  on_linux do
    sha256 "53aa88fd1f79aa90136473ccae54228ea13979fcb9bfcde5f46482c7f462d16e"

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
