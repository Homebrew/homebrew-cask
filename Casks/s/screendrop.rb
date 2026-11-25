cask "screendrop" do
  version "0.40.1"
  sha256 "dcbd82be6acf9af690ad3fa96694c4d1690a2b1ef43c47813d5541296d73ca1c"

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
