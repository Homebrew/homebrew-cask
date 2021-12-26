cask "kicad" do
  version "6.0.0-0"
  sha256 "ac8d93c9e4d3eb03446f18e6803f92168cf34f35080595425d0c5cb448c2a743"

  url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}.dmg",
      verified: "kicad-downloads.s3.cern.ch/"
  name "KiCad"
  desc "Electronics design automation suite"
  homepage "https://kicad.org/"

  livecheck do
    url "https://kicad-downloads.s3.cern.ch/?delimiter=/&prefix=osx/stable/"
    regex(/kicad-unified-(\d+(?:.\d+)*)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "KiCad/kicad.app",            target: "KiCad/kicad.app"
  app "KiCad/bitmap2component.app", target: "KiCad/bitmap2component.app"
  app "KiCad/eeschema.app",         target: "KiCad/eeschema.app"
  app "KiCad/gerbview.app",         target: "KiCad/gerbview.app"
  app "KiCad/pcb_calculator.app",   target: "KiCad/pcb_calculator.app"
  app "KiCad/pcbnew.app",           target: "KiCad/pcbnew.app"
  app "KiCad/pl_editor.app",        target: "KiCad/pl_editor.app"
  artifact "kicad/help",            target: "/Library/Application Support/kicad/help"
  artifact "kicad/library",         target: "/Library/Application Support/kicad/library"
  artifact "kicad/modules",         target: "/Library/Application Support/kicad/modules"
  artifact "kicad/share",           target: "/Library/Application Support/kicad/share"
  artifact "kicad/template",        target: "/Library/Application Support/kicad/template"

  uninstall rmdir: [
    "/Library/Application Support/kicad",
    "#{appdir}/KiCad",
  ]

  zap trash: "~/Library/Preferences/kicad"
end
