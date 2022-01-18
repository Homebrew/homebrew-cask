cask "bleunlock" do
  version "1.12"
  sha256 "4d518366632c994211ec5347848479505b1a4d832021c6f4488ad332af1c65c8"

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
