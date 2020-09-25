cask "cleanshot" do
  version "3.3.8"
  sha256 "e59e82fa037b6738d5b7262881e69bfe7d4f619bce4a93c9ee7cee5a6c8b7faa"

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
