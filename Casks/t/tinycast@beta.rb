cask "tinycast@beta" do
  version "0.14.0-beta.146"
  sha256 "461674f10c4f0cdbc965aa1f361c4a4e2e7c980f26285b15756d7f297018fb26"

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
