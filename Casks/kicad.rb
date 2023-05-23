cask "kicad" do
  version "7.0.4-0"
  sha256 "874a395b53f37f83b768bec27c28499818938f5af0773a4ffba7293ba3f1bd2a"

  url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-universal-#{version}.dmg",
      verified: "kicad-downloads.s3.cern.ch/osx/stable/"
  name "KiCad"
  desc "Electronics design automation suite"
  homepage "https://kicad.org/"

  livecheck do
    url "https://kicad-downloads.s3.cern.ch/?delimiter=/&prefix=osx/stable/"
    regex(/kicad[._-]unified[._-]universal[._-]v?(\d+(?:.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  suite "KiCad"
  binary "KiCad/KiCad.app/Contents/MacOS/dxf2idf"
  binary "KiCad/KiCad.app/Contents/MacOS/idf2vrml"
  binary "KiCad/KiCad.app/Contents/MacOS/idfcyl"
  binary "KiCad/KiCad.app/Contents/MacOS/idfrect"
  binary "KiCad/KiCad.app/Contents/MacOS/kicad-cli"
  artifact "demos", target: "/Library/Application Support/kicad/demos"

  zap trash: [
    "/Library/Application Support/kicad",
    "~/Library/Application Support/kicad",
    "~/Library/Preferences/kicad",
    "~/Library/Preferences/org.kicad-pcb.*",
    "~/Library/Saved Application State/org.kicad-pcb.*",
  ]
end
