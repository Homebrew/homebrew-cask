cask "kicad" do
  version "5.1.7-0"
  sha256 "7f136cf18fbea59b2bae22e08ca55e198994baf1c3ad57875d3e59ad295304c0"

  # kicad-downloads.s3.cern.ch/ was verified as official when first introduced to the cask
  url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}-10_14.dmg"
  appcast "https://kicad-downloads.s3.cern.ch/?delimiter=/&prefix=osx/stable/"
  name "KiCad"
  desc "Electronics design automation suite"
  homepage "https://kicad-pcb.org/"

  depends_on macos: ">= :mojave"

  app "KiCad/kicad.app",            target: "KiCad/KiCad.app"
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
