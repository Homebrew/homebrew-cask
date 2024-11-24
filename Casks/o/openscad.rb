cask "openscad" do
  version "2021.01"
  sha256 "4e4568e19992636ba497c04bc2238399c92314fcb7bf75dc3632aa623ca3635e"

  url "https://files.openscad.org/OpenSCAD-#{version}.dmg"
  name "OpenSCAD"
  desc "Programmable solid 3D CAD modeller"
  homepage "https://www.openscad.org/"

  livecheck do
    url "https://files.openscad.org/"
    regex(/href=.*?OpenSCAD[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with cask: "openscad@snapshot"

  app "OpenSCAD-#{version}.app"
  binary "#{appdir}/OpenSCAD-#{version}.app/Contents/MacOS/OpenSCAD", target: "openscad"

  zap trash: [
    "~/Library/Caches/org.openscad.OpenSCAD",
    "~/Library/Preferences/org.openscad.OpenSCAD.plist",
    "~/Library/Saved Application State/org.openscad.OpenSCAD.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
