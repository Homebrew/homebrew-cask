cask "screendrop" do
  version "0.40.2"
  sha256 "31e6266eb8e466b2642363bd8be8c56e1c89320fc0ab51cdbee90f2881c757fa"

  url "https://github.com/fayazara/Screendrop/releases/download/v#{version}/Screendrop.dmg"
  name "Screendrop"
  desc "Screenshot and screen recording tool"
  homepage "https://github.com/fayazara/Screendrop"

  auto_updates true
  depends_on macos: :tahoe

  app "Screendrop.app"

  uninstall quit: "com.fayazahmed.Screendrop"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Screendrop_*.plist",
    "~/Library/Application Support/Screendrop",
    "~/Library/Caches/com.fayazahmed.Screendrop",
    "~/Library/HTTPStorages/com.fayazahmed.Screendrop",
    "~/Library/Preferences/com.fayazahmed.Screendrop.plist",
  ]
end
