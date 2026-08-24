cask "openwhispr" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: ".dmg", linux: "-linux-x86_64.AppImage"

  version "1.9.0"

  on_macos do
    sha256 arm:   "06e031d5f4ca6d1ab76919976e6b13c0fb0b5c5a3c3222303dcf56ea930277a9",
           intel: "a78ddbe8e0970230e5905c881db5f64cf95b13b27e3db259890f32deb452e1da"

    depends_on macos: :monterey

    app "OpenWhispr.app"
  end
  on_linux do
    sha256 "ff36f126a9bd62a5a0d9de73347e2ea78f1901e17a9380ef6950225d0492993d"

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
