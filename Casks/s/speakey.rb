cask "speakey" do
  version "1.2.48"
  sha256 "0be619c96c706292d243fa8e7eaf4e8c01f9aaf924d9e5981e5a3f4264b132d3"

  url "https://github.com/raymondchins/speakey-releases/releases/download/v#{version}/Speakey.dmg"
  name "Speakey"
  desc "Voice dictation, rewriting and computer control"
  homepage "https://getspeakey.com/"

  livecheck do
    url "https://github.com/raymondchins/speakey-releases/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Speakey.app"

  uninstall quit: "com.raymondchins.speakey"

  zap trash: [
    "~/.config/speakey",
    "~/Library/Application Support/Speakey",
    "~/Library/Caches/com.raymondchins.speakey",
    "~/Library/Caches/Speakey",
    "~/Library/HTTPStorages/com.raymondchins.speakey",
    "~/Library/Logs/Speakey*.log",
    "~/Library/Preferences/com.raymondchins.speakey.plist",
    "~/Library/Saved Application State/com.raymondchins.speakey.savedState",
    "~/Library/WebKit/com.raymondchins.speakey",
  ]
end
