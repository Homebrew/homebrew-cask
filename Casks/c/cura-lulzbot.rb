cask "cura-lulzbot" do
  version "4.13.10"
  sha256 "e899f81b8759eea8d8c1dfb98ff020e6cec7c485dd27a3245924c113d1f71d65"

  url "https://software.lulzbot.com/MacOSX/Cura%20LulzBot%20Edition%20#{version.major_minor}/#{version}/Cura_LulzBot_Edition-#{version}.dmg"
  name "Cura LulzBot Edition"
  desc "3D printing solution"
  homepage "https://lulzbot.com/support/cura"

  livecheck do
    url "https://lulzbot.com/support/cura-le-macos"
    regex(/href=.*?Cura[._-]LulzBot[._-]Edition[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
