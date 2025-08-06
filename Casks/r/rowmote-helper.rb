cask "rowmote-helper" do
  version "4.2.5"
  sha256 "acf5bf794d7b7b0da253d33a7dd5bdf6b33f0af83a9411c6e86a8816f899794d"

  url "https://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  name "Rowmote Helper"
  desc "Control system with Rowmote Pro remote control"
  homepage "https://regularrateandrhythm.com/apps/rowmote-pro/"

  livecheck do
    url "https://rowmote.com/rowmote-appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Rowmote Helper.app"

  zap trash: [
    "~/Library/Application Scripts/com.regularrateandrhythm.rowmotehelper-Helper",
    "~/Library/Caches/com.regularrateandrhythm.rowmotehelper",
    "~/Library/Containers/com.regularrateandrhythm.rowmotehelper-Helper",
    "~/Library/HTTPStorages/com.regularrateandrhythm.rowmotehelper",
    "~/Library/Preferences/com.regularrateandrhythm.rowmotehelper.plist",
  ]
end
