cask "bluefish" do
  version "2.2.12"
  sha256 "85fc22336e929ccae9010d80df76dc1426296912f57dc622abbd345a0a24bd47"

  url "https://www.bennewitz.com/bluefish/stable/binaries/macosx/Bluefish-#{version}.dmg",
      verified: "bennewitz.com/"
  name "Bluefish"
  desc "Open source code editor"
  homepage "https://bluefish.openoffice.nl/index.html"

  livecheck do
    url "https://www.bennewitz.com/bluefish/stable/binaries/macosx/"
    regex(/href=.*?Bluefish[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Bluefish.app"

  caveats do
    requires_rosetta
  end
end
