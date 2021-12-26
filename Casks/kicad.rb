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

  app "KiCad/Bitmap2Component.app",   target: "KiCad/Bitmap2Component.app"
  app "KiCad/Eeschema.app",           target: "KiCad/Eeschema.app"
  app "KiCad/GerbView.app",           target: "KiCad/GerbView.app"
  app "KiCad/KiCad.app",              target: "KiCad/KiCad.app"
  app "KiCad/PCB Calculator.app",     target: "KiCad/PCB Calculator.app"
  app "KiCad/Page Layout Editor.app", target: "KiCad/Page Layout Editor.app"
  app "KiCad/Pcbnew.app",             target: "KiCad/Pcbnew.app"
  artifact "demos",                   target: "/Library/Application Support/kicad/demos"

  uninstall rmdir: [
    "/Library/Application Support/kicad",
    "#{appdir}/KiCad",
  ]

  zap trash: [
    "~/Library/Application Support/kicad",
    "~/Library/Preferences/kicad",
    "~/Library/Preferences/org.kicad-pcb.*",
  ]
end
