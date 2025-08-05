cask "bleunlock" do
  version "1.12.2"
  sha256 "9ceddc874cf519efc7411c8340abab9e1ff8a4b5b252eff6ca32a94b8cafef5b"

  url "https://github.com/ts1/BLEUnlock/releases/download/#{version}/BLEUnlock-#{version}.zip"
  name "BLEUnlock"
  desc "Lock/unlock Apple computers using the proximity of a bluetooth low energy device"
  homepage "https://github.com/ts1/BLEUnlock"

  depends_on macos: ">= :high_sierra"

  app "BLEUnlock.app"

  zap trash: [
    "~/Library/Application Scripts/jp.sone.BLEUnlock",
    "~/Library/Caches/jp.sone.BLEUnlock",
    "~/Library/Preferences/jp.sone.BLEUnlock.plist",
  ]
end
