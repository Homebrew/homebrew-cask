cask "tinycast@beta" do
  version "0.13.0-beta.145"
  sha256 "b3cfe5aa5c4bfbaa31139617adc887722d334c44a244a4d3cb873ed44a00e0c5"

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

  uninstall quit: "com.abueammar.tinycast.beta"

  zap trash: [
    "~/.config/tinycast-beta",
    "~/Library/Application Support/com.abueammar.tinycast.beta",
    "~/Library/Application Support/com.tinycast.app.beta",
    "~/Library/Application Support/CrashReporter/ClipboardTextHelper_*.plist",
    "~/Library/Application Support/CrashReporter/FileIndexHelper_*.plist",
    "~/Library/Application Support/CrashReporter/Tinycast Beta_*.plist",
    "~/Library/Application Support/CrashReporter/Tinycast Dictation_*.plist",
    "~/Library/Caches/ClipboardTextHelper",
    "~/Library/Caches/com.abueammar.tinycast.beta",
    "~/Library/Caches/com.abueammar.tinycast.beta.dictation",
    "~/Library/Caches/com.tinycast.app.beta",
    "~/Library/Caches/com.tinycast.app.beta.dictation",
    "~/Library/Preferences/com.abueammar.tinycast.beta.plist",
    "~/Library/Preferences/com.tinycast.app.beta.plist",
  ]
end
