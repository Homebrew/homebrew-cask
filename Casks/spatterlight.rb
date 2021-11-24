cask "spatterlight" do
  version "0.9.0"
  sha256 "041aae3cfc45cab8b7ad258dc7daa4c781b4a50216f8149b7169624d8369e00a"

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
