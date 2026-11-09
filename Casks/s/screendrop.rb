cask "screendrop" do
  version "0.37.1"
  sha256 "faa7bc2e3413645decba605076e6b649589e96db533280e28fa5309eccefd4a4"

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
