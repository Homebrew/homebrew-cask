cask "kicad" do
  version "7.0.6-0"
  sha256 "f2dcff4fc85f11c6bea9c4a75f4041adeec4a6ddb314dbb9f2cf9a64b1dbcdd9"

  url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-universal-#{version}.dmg",
      verified: "kicad-downloads.s3.cern.ch/osx/stable/"
  name "KiCad"
  desc "Electronics design automation suite"
  homepage "https://kicad.org/"

  livecheck do
    url "https://downloads.kicad.org/kicad/macos/explore/stable"
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
