cask "kiwidesk" do
  version "5.0.1"
  sha256 "eccc0a0bfe887725bbd2ebacfd4f13a5c98b0b83e81b61c9ee9f78512c7d03de"

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
