cask "kicad" do
  version "7.0.9"
  sha256 "0e626521850594596d30711967216203e85343e0ed59f552336975fef6caa7dc"

  url "https://github.com/KiCad/kicad-source-mirror/releases/download/#{version}/kicad-unified-universal-#{version}.dmg",
      verified: "github.com/KiCad/kicad-source-mirror/"
  name "KiCad"
  desc "Electronics design automation suite"
  homepage "https://kicad.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

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
