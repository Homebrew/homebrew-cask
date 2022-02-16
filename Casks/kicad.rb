cask "kicad" do
  version "6.0.2-0"
  sha256 "7c43e069666ee52cb5580495f6a006788daecf29e9b6fb15a3d7c4bcac9be6b1"

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
