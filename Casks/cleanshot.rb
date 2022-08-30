cask "cleanshot" do
  version "4.4"
  sha256 "6b99cfc7dd24e6cf8ed697803078a8d5b6813e401684a944dec154a479341c3c"

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
