cask "soundboosterlite" do
  version :latest
  sha256 :no_check

  url "https://froyosoft.com/SoundBoosterLite.zip"
  name "FroYoSoft Sound Booster Lite"
  homepage "https://froyosoft.com/soundbooster.php"

  pkg "SoundBoosterLite.pkg"

  uninstall quit:      "com.froyosoft.SoundBoosterLite",
            launchctl: "com.froyosoft.soundboosterxpc",
            pkgutil:   "com.froyosoft.pkg.SoundBoosterLite"
end
