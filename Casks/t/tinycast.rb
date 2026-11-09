cask "tinycast" do
  version "0.12.11"
  sha256 "7ddc5e92896770cd9144e175eeb8700da2cb4832c1c3ce18a51f650747780148"

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
