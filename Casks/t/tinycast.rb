cask "tinycast" do
  version "0.12.15"
  sha256 "e9915ddb7b8339428664e22c5ae1d16b506bb4baf7f71d496c37db06e7f44589"

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
