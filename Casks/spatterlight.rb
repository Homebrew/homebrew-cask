cask "spatterlight" do
  version "0.8.4"
  sha256 "0cf60e8a94c0c5a57ee1d3296b919a6b5afb73e3a3fe9213968e8cde2e83bbaa"

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
