cask "cleanshot" do
  version "4.8"
  sha256 "046c642686eecfdfa7419ef2dc1d31a86f99f283097acd64280eba481a2d1c9a"

  url "https://updates.getcleanshot.com/v3/CleanShot-X-#{version}.dmg"
  name "CleanShot"
  desc "Screen capturing tool"
  homepage "https://getcleanshot.com/"

  livecheck do
    url "https://cleanshot.com/changelog"
    regex(/class="number"[^>]*?>(\d+(?:\.\d+)+)</i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

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
