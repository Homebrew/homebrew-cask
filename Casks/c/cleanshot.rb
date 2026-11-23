cask "cleanshot" do
  version "5.0.3"
  sha256 "3e4a0f457ad07f95264e78f68fa0b8d4c06e179b23dfa801c6900262991225eb"

  url "https://updates.getcleanshot.com/v3/CleanShot-X-#{version}.dmg"
  name "CleanShot"
  desc "Screen capturing tool"
  homepage "https://cleanshot.com/"

  livecheck do
    url "https://cleanshot.com/changelog"
    regex(/class="number"[^>]*?>(\d+(?:\.\d+)+)</i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "CleanShot X.app"

  uninstall quit: "pl.maketheweb.cleanshotx"

  zap trash: [
    "~/Library/Application Scripts/pl.maketheweb.cleanshotx.*",
    "~/Library/Application Support/CleanShot",
    "~/Library/Caches/pl.maketheweb.cleanshotx",
    "~/Library/Caches/SentryCrash/CleanShot X",
    "~/Library/Containers/pl.maketheweb.cleanshotx.*",
    "~/Library/HTTPStorages/pl.maketheweb.cleanshotx",
    "~/Library/Preferences/com.getcleanshot.app.plist",
    "~/Library/Preferences/pl.maketheweb.cleanshotx.plist",
    "~/Library/WebKit/pl.maketheweb.cleanshotx",
  ]
end
