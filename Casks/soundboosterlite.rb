cask "soundboosterlite" do
  version "0.31"
  sha256 :no_check

  url "https://froyosoft.com/SoundBoosterLite.zip"
  name "FroYoSoft Sound Booster Lite"
  desc "App for an enhanced audio experience"
  homepage "https://froyosoft.com/soundbooster.php"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.froyosoft.SoundBoosterLite"].short_version
    end
  end

  pkg "SoundBoosterLite.pkg"

  uninstall quit:      "com.froyosoft.SoundBoosterLite",
            launchctl: "com.froyosoft.soundboosterxpc",
            pkgutil:   "com.froyosoft.pkg.SoundBoosterLite"

  zap trash: [
    "~/Library/Application Scripts/com.froyosoft.SoundBoosterLite",
    "~/Library/Containers/com.froyosoft.SoundBoosterLite",
  ]
end
