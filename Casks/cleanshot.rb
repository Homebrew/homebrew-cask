cask "cleanshot" do
  version "4.2.2"
  sha256 "38992ad014ca0adb00eecf0c5ba6d7b46303bc832f125acb942e347afb5290c8"

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
