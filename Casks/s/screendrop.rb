cask "screendrop" do
  version "0.39.1"
  sha256 "06a61801224a12004d8d7e34dce8342a0ff40dcb652455a5e0260658fc11e40b"

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
