cask "bleunlock" do
  version "1.10.2"
  sha256 "ecc207795e64ce46691731f322554d8594ad9d1a81021d32ced5182cf3e95bd3"

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
