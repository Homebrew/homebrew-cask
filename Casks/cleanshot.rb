cask "cleanshot" do
  version "4.1"
  sha256 "50f7926fa620cd89db57c38785de7e25883144583903c30de32451c5d11c4b25"

  url "https://updates.getcleanshot.com/v3/CleanShot-X-#{version}.dmg"
  name "CleanShot"
  desc "Screen capturing tool"
  homepage "https://getcleanshot.com/"

  livecheck do
    url "https://cleanshot.com/changelog"
    regex(/class="number">(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

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
