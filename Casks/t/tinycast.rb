cask "tinycast" do
  version "0.12.8"
  sha256 "22ce1ba191ce0d38473c09cec7ee8525b58ed28535935c67865fb2be5cb0fb4a"

  url "https://github.com/abue-ammar/tinycast/releases/download/v#{version}/Tinycast-#{version}.dmg"
  name "Tinycast"
  desc "Application launcher and productivity tool"
  homepage "https://tinycast.dev/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Tinycast.app"

  uninstall quit: "com.tinycast.app"

  zap trash: [
    "~/.config/tinycast",
    "~/Library/Application Support/com.tinycast.app",
    "~/Library/Application Support/CrashReporter/ClipboardTextHelper_*.plist",
    "~/Library/Application Support/CrashReporter/FileIndexHelper_*.plist",
    "~/Library/Application Support/CrashReporter/Tinycast Dictation_*.plist",
    "~/Library/Application Support/CrashReporter/Tinycast_*.plist",
    "~/Library/Caches/ClipboardTextHelper",
    "~/Library/Caches/com.tinycast.app",
    "~/Library/Caches/com.tinycast.app.dictation",
    "~/Library/Preferences/com.tinycast.app.plist",
  ]
end
