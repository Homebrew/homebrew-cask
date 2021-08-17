cask "spatterlight" do
  version "0.8.5"
  sha256 "dce3604d74fbfd7ae619c4936cdbaa54c0e81e51ad81882d2c4ff606e12c05bc"

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
    "~/Library/Preferences/net.ccxvii.spatterlight.plist",
  ]
end
