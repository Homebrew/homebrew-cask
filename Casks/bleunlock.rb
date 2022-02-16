cask "bleunlock" do
  version "1.12.1"
  sha256 "d9847b2f540393bb2a18dc5be6929021c7499c383d12a198ee9f9e9ffada5f6b"

  url "https://github.com/ts1/BLEUnlock/releases/download/#{version}/BLEUnlock-#{version}.zip"
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
