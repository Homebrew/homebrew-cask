cask "kicad" do
  version "5.1.12-1"
  sha256 "c2380302f0ddce72123aa0ae4a6561b3acc168c3c04fc6b3019ee3325dcd65e3"

  url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}-10_14.dmg",
      verified: "kicad-downloads.s3.cern.ch/"
  name "KiCad"
  desc "Electronics design automation suite"
  homepage "https://kicad.org/"

  livecheck do
    url "https://kicad-downloads.s3.cern.ch/?delimiter=/&prefix=osx/stable/"
    regex(/kicad-unified-(\d+(?:.\d+)*)-10_14\.dmg/i)
  end

  depends_on macos: ">= :mojave"

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
