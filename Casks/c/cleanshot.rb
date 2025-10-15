cask "cleanshot" do
  version "4.8.4"
  sha256 "61f5d74433c5c021700ab3d9ffa67f4e0973a99f488413ec11d45e3322c8984f"

  url "https://updates.getcleanshot.com/v3/CleanShot-X-#{version}.dmg"
  name "CleanShot"
  desc "Screen capturing tool"
  homepage "https://getcleanshot.com/"

  livecheck do
    url "https://cleanshot.com/changelog"
    regex(/class="number"[^>]*?>(\d+(?:\.\d+)+)</i)
  end

  auto_updates true

  app "CleanShot X.app"

  uninstall quit: "pl.maketheweb.cleanshotx"

  zap trash: [
    "~/Library/Application Support/CleanShot",
    "~/Library/Caches/pl.maketheweb.cleanshotx",
    "~/Library/Caches/SentryCrash/CleanShot X",
    "~/Library/Preferences/com.getcleanshot.app.plist",
    "~/Library/Preferences/pl.maketheweb.cleanshotx.plist",
  ]
end
