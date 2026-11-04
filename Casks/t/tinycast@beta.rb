cask "tinycast@beta" do
  version "0.12.8-beta.132"
  sha256 "684da9a06e1cf2574917ada14b7a50404e44ab8dfd7cfbebbd3b91f05c566ca6"

  url "https://github.com/abue-ammar/tinycast/releases/download/v#{version}/Tinycast-#{version}.dmg"
  name "Tinycast Beta"
  desc "Application launcher and productivity tool"
  homepage "https://tinycast.dev/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-beta\.\d+)$/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Tinycast Beta.app"

  uninstall quit: "com.tinycast.app.beta"

  zap trash: [
    "~/.config/tinycast-beta",
    "~/Library/Application Support/com.tinycast.app.beta",
    "~/Library/Application Support/CrashReporter/ClipboardTextHelper_*.plist",
    "~/Library/Application Support/CrashReporter/FileIndexHelper_*.plist",
    "~/Library/Application Support/CrashReporter/Tinycast Beta_*.plist",
    "~/Library/Application Support/CrashReporter/Tinycast Dictation_*.plist",
    "~/Library/Caches/ClipboardTextHelper",
    "~/Library/Caches/com.tinycast.app.beta",
    "~/Library/Caches/com.tinycast.app.beta.dictation",
    "~/Library/HTTPStorages/com.tinycast.app.beta",
    "~/Library/HTTPStorages/com.tinycast.app.beta.binarycookies",
    "~/Library/Preferences/com.tinycast.app.beta.plist",
  ]
end
