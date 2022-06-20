cask "kicad" do
  version "6.0.6-0"
  sha256 "3b57fcf07a4e1b835f1762ade88813db5858f5a2d931ea95f5f6da988edf7064"

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

  suite "KiCad"
  artifact "demos", target: "/Library/Application Support/kicad/demos"

  uninstall delete: [
    "#{appdir}/KiCad",
    "/Library/Application Support/kicad/demos",
  ]

  zap trash: [
    "/Library/Application Support/kicad",
    "~/Library/Application Support/kicad",
    "~/Library/Preferences/kicad",
    "~/Library/Preferences/org.kicad-pcb.*",
  ]
end
