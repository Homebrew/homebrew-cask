cask "kicad" do
  version "9.0.7"
  sha256 "449525e4ac119dc79a36b9a5aba5e6a269ecdc1905b94dce9eaf44ea45fd84c2"

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
  binary "#{appdir}/KiCad/KiCad.app/Contents/MacOS/dxf2idf"
  binary "#{appdir}/KiCad/KiCad.app/Contents/MacOS/idf2vrml"
  binary "#{appdir}/KiCad/KiCad.app/Contents/MacOS/idfcyl"
  binary "#{appdir}/KiCad/KiCad.app/Contents/MacOS/idfrect"
  binary "#{appdir}/KiCad/KiCad.app/Contents/MacOS/kicad-cli"
  artifact "demos", target: "/Library/Application Support/kicad/demos"

  zap delete: "/Library/Application Support/kicad",
      trash:  [
        "~/Library/Application Support/kicad",
        "~/Library/Preferences/kicad",
        "~/Library/Preferences/org.kicad-pcb.*",
        "~/Library/Saved Application State/org.kicad-pcb.*",
      ]
end
