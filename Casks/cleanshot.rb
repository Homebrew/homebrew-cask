cask "cleanshot" do
  version "3.6.2"
  sha256 "ed19bb7399ce4d9ff3b763d921f5dd7e921532c7b5d55a22757e01c3152f4a78"

  url "https://updates.getcleanshot.com/v#{version.major}/CleanShot-X-#{version}.dmg"
  name "CleanShot"
  desc "Screen capturing tool"
  homepage "https://getcleanshot.com/"

  livecheck do
    url "https://updates.getcleanshot.com/v#{version.major}/appcast.xml"
    strategy :sparkle
  end

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
