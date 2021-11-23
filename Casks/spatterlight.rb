cask "spatterlight" do
  version "0.8.9"
  sha256 "dd4878b9207b6e45d80796f130d0862387347c0730ce85ef6e6644b54dff33ca"

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
