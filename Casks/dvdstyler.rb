cask "dvdstyler" do
  version "3.2.1"
  sha256 "ed17b737f98f2d6a297f6c049285384c81f9680cf43db15b412be6269d6a051b"

  url "https://downloads.sourceforge.net/dvdstyler/DVDStyler-#{version}-MacOSX.dmg",
      verified: "sourceforge.net/dvdstyler/"
  name "DVDStyler"
  desc "DVD authoring application"
  homepage "https://www.dvdstyler.org/"

  livecheck do
    url "https://www.dvdstyler.org/en/downloads"
    regex(/DVDStyler[._-]?(\d+(?:\.\d+)+)[._-]?MacOSX\.dmg/i)
  end

  app "DVDStyler.app"
end
