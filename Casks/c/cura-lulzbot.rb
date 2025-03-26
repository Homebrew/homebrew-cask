cask "cura-lulzbot" do
  version "4.13.16"
  sha256 "13e721d978420df8762f30ba6fbc4a954345ba0f1b956f6215b7facbe2a90bf1"

  url "https://software.lulzbot.com/MacOSX/Cura%20LulzBot%20Edition%20#{version.major_minor}/#{version.split("-").first}/Cura_LulzBot_Edition-#{version}.dmg"
  name "Cura LulzBot Edition"
  desc "3D printing solution"
  homepage "https://lulzbot.com/support/cura"

  livecheck do
    url "https://lulzbot.com/support/cura-le-macos"
    regex(/href=.*?Cura[._-]LulzBot[._-]Edition[._-]v?(\d+(?:\.\d+)+(?:-patch)?)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "Cura LulzBot Edition.app"

  zap trash: [
    "~/.cura",
    "~/Library/Application Support/cura-lulzbot",
    "~/Library/Preferences/org.pythonmac.unspecified.cura-lulzbot.cura-lulzbot",
    "~/Library/Saved Application State/org.pythonmac.unspecified.cura-lulzbot.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
