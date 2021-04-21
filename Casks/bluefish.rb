cask "bluefish" do
  version "2.2.12"
  sha256 "85fc22336e929ccae9010d80df76dc1426296912f57dc622abbd345a0a24bd47"

  url "https://www.bennewitz.com/bluefish/stable/binaries/macosx/Bluefish-#{version}.dmg",
      verified: "bennewitz.com/"
  appcast "https://www.bennewitz.com/bluefish/stable/binaries/macosx/"
  name "Bluefish"
  desc "Open source code editor"
  homepage "http://bluefish.openoffice.nl/index.html"

  app "Bluefish.app"
end
