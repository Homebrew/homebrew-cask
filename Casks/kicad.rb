cask "kicad" do
  version "5.1.8-0"
  sha256 "a8edcae34a19afbec3c8b7ec4e38ada4d19c0c6a73a94d2f2f4e8f5b48278bbd"

  url "https://kicad-downloads.s3.cern.ch/osx/stable/kicad-unified-#{version}-10_14.dmg",
      verified: "kicad-downloads.s3.cern.ch/"
  appcast "https://kicad-downloads.s3.cern.ch/?delimiter=/&prefix=osx/stable/"
  name "KiCad"
  desc "Electronics design automation suite"
  homepage "https://kicad.org/"

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
