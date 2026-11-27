cask "tinycast" do
  version "0.17.0"
  sha256 "d4e0b2335706c5417a49ef8ff9938f06460d01f0cbccb2084814f6907db74d31"

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

  uninstall quit: "com.abueammar.tinycast"

  zap trash: [
    "~/.config/tinycast",
    "~/Library/Application Support/com.abueammar.tinycast",
    "~/Library/Application Support/com.tinycast.app",
    "~/Library/Application Support/CrashReporter/ClipboardTextHelper_*.plist",
    "~/Library/Application Support/CrashReporter/FileIndexHelper_*.plist",
    "~/Library/Application Support/CrashReporter/Tinycast Dictation_*.plist",
    "~/Library/Application Support/CrashReporter/Tinycast_*.plist",
    "~/Library/Caches/ClipboardTextHelper",
    "~/Library/Caches/com.abueammar.tinycast",
    "~/Library/Caches/com.abueammar.tinycast.dictation",
    "~/Library/Caches/com.tinycast.app",
    "~/Library/Caches/com.tinycast.app.dictation",
    "~/Library/Preferences/com.abueammar.tinycast.plist",
    "~/Library/Preferences/com.tinycast.app.plist",
  ]
end
