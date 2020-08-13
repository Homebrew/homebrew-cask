cask "cleanshot" do
  version "3.3.3"
  sha256 "781f2c4e4392f181541277c4449694932398fc6d03879a101b6ddb11a8793eeb"

  url "https://updates.getcleanshot.com/v#{version.major}/CleanShot-X-#{version}.dmg"
  appcast "https://updates.getcleanshot.com/v#{version.major}/appcast.xml"
  name "CleanShot"
  homepage "https://getcleanshot.com/"

  auto_updates true

  app "CleanShot X.app"

  uninstall quit: "pl.maketheweb.cleanshotx"

  zap trash: [
    "~/Library/Application Support/CleanShot",
    "~/Library/Caches/SentryCrash/CleanShot X",
    "~/Library/Caches/pl.maketheweb.cleanshotx",
    "~/Library/Preferences/pl.maketheweb.cleanshotx.plist",
  ]
end
