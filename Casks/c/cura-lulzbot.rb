cask "cura-lulzbot" do
  version "4.13.17"
  sha256 "4bdf2bff36e824521bdabdadbe9e21c308110648cb12be4fe00b940509aad424"

  url "https://software.lulzbot.com/Cura_LulzBot_Edition/MacOSX/#{version}/Cura_LulzBot_Edition-#{version}.dmg"
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
