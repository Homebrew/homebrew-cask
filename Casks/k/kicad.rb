cask "kicad" do
  version "10.0.7"
  sha256 "fbc27419b841a9a2a8b143b5875a87b8bd943ffcf487d53c78a8fb6d24c59e27"

  url "https://github.com/KiCad/kicad-source-mirror/releases/download/#{version}/kicad-unified-universal-#{version}.dmg"
  name "KiCad"
  desc "Electronics design automation suite"
  homepage "https://kicad.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

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
        "~/Library/Caches/KiCad",
        "~/Library/Preferences/kicad",
        "~/Library/Preferences/org.kicad-pcb.*",
        "~/Library/Preferences/org.kicad.*",
        "~/Library/Saved Application State/org.kicad-pcb.*",
        "~/Library/Saved Application State/org.kicad.*",
      ]
end
