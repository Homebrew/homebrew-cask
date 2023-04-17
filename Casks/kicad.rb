cask "kicad" do
  version "7.0.2-0"
  sha256 "bef34c093b3f9e5166961dbc941da74eaad2341e8375b8682791810d848ec0c3"

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
