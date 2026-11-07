cask "tinycast@beta" do
  version "0.12.9-beta.134"
  sha256 "9be3fae8c87b24584053df369bd9ab284bc5f99a6701a88187ef9d397247e81f"

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
