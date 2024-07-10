cask "dvdstyler" do
  version "3.2.1_1"
  sha256 "79da43f15c1eb8002cf4a9282ff61047fdd0911532a413e0b3f9077530673ac5"

  url "https://downloads.sourceforge.net/dvdstyler/DVDStyler-#{version}-MacOSX.dmg",
      verified: "sourceforge.net/dvdstyler/"
  name "DVDStyler"
  desc "DVD authoring application"
  homepage "https://www.dvdstyler.org/"

  livecheck do
    url "https://www.dvdstyler.org/en/downloads"
    regex(/DVDStyler[._-]?(\d+(?:[._]\d+)+)[._-]?MacOSX\.dmg/i)
  end

  app "DVDStyler.app"

  zap trash: [
    "~/Library/Preferences/DVDStyler Preferences",
    "~/Library/Preferences/org.dvdstyler.DVDStyler.plist",
    "~/Library/Saved Application State/org.dvdstyler.DVDStyler.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
