cask "cleanshot" do
  version "3.5"
  sha256 "23ae742b62d86062d1f486419e6da3a5c2ec65277d5b9cb9708cf0af496a4364"

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
