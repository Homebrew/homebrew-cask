cask "bleunlock" do
  version "1.10.1"
  sha256 "60ccc7dbe86521b29c0f1ac605db69a90713765abc1532975b61473258beffc1"

  url "https://github.com/ts1/BLEUnlock/releases/download/#{version}/BLEUnlock-#{version}.zip"
  appcast "https://github.com/ts1/BLEUnlock/releases.atom"
  name "BLEUnlock"
  desc "Lock/unlock Apple computers using the proximity of a bluetooth low energy device"
  homepage "https://github.com/ts1/BLEUnlock"

  app "BLEUnlock.app"

  zap trash: [
    "~/Library/Application Scripts/jp.sone.BLEUnlock",
    "~/Library/Caches/jp.sone.BLEUnlock",
    "~/Library/Preferences/jp.sone.BLEUnlock.plist",
  ]
end
