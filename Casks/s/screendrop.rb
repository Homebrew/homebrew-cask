cask "screendrop" do
  version "0.39.0"
  sha256 "191d851a6513ecad5d9ec34a622dbe3659d8a447b4ac0dc07486201d9a6b6563"

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
