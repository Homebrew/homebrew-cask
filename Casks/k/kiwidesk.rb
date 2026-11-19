cask "kiwidesk" do
  version "5.0.0"
  sha256 "e6643149ca62092cb43e0332b539ec9ddb6110160591f6f8b807d0973024b287"

  url "https://github.com/KiwiCanopy/KiwiDesk/releases/download/v#{version}/KiwiDesk-#{version}.zip"
  name "KiwiDesk"
  desc "Tiling window manager"
  homepage "https://kiwidesk.kiwicanopy.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "KiwiDesk.app"
  binary "#{appdir}/KiwiDesk.app/Contents/MacOS/KiwiDesk", target: "kiwidesk"

  uninstall launchctl: "org.kiwidesk.KiwiDesk",
            quit:      "com.kiwicanopy.kiwidesk"

  zap trash: [
    "~/.config/KiwiDesk",
    "~/Library/Application Support/CrashReporter/KiwiDesk_*.plist",
    "~/Library/Application Support/KiwiDesk",
    "~/Library/Caches/com.kiwicanopy.kiwidesk",
    "~/Library/HTTPStorages/com.kiwicanopy.kiwidesk",
    "~/Library/Preferences/com.kiwicanopy.kiwidesk.plist",
    "~/Library/WebKit/com.kiwicanopy.kiwidesk",
  ]
end
