cask "cleanshot" do
  version "3.4.6"
  sha256 "9fa4f3314ad24c848c7b55330b60914fe91630999487deb83dcd7ee1876413ab"

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
