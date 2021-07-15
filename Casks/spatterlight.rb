cask "spatterlight" do
  version "0.8.3"
  sha256 "e49bb02502c4675f59c2635c1649ca1a41e111c06fdcbcbf7b41a478efbeb747"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.zip",
      verified: "github.com/angstsmurf/spatterlight/"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "http://ccxvii.net/spatterlight/"

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"

  zap trash: [
    "~/Library/Application Scripts/net.ccxvii.spatterlight.SpatterlightQuickLook",
    "~/Library/Application Scripts/net.ccxvii.spatterlight.SpatterlightThumbnailer",
    "~/Library/Application Scripts/net.ccxvii.spatterlight.iFictionQuickLook",
    "~/Library/Containers/net.ccxvii.spatterlight.SpatterlightQuickLook",
    "~/Library/Containers/net.ccxvii.spatterlight.SpatterlightThumbnailer",
    "~/Library/Containers/net.ccxvii.spatterlight.iFictionQuickLook",
    "~/Library/Preferences/net.ccxvii.spatterlight.plist"
  ]
end
