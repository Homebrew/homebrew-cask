cask "kicad" do
  version "6.0.1-0"
  sha256 "b9d09d634a7359a4b5743b8cb01b71d815bdd5732086f18eb8db50a7260a54b8"

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
