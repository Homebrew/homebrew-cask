cask "openscad" do
  version "2021.01"
  sha256 "54d169cab899ff0647407c42d378d3fc4611c62a85b463446cdf21c3463afae7"

  url "https://files.openscad.org/OpenSCAD-#{version}.dmg"
  name "OpenSCAD"
  desc "Programmable solid 3D CAD modeller"
  homepage "https://www.openscad.org/"

  livecheck do
    url "https://files.openscad.org/"
    regex(/href=.*?OpenSCAD[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with cask: "openscad@snapshot"

  app "OpenSCAD.app"
  binary "#{appdir}/OpenSCAD.app/Contents/MacOS/OpenSCAD", target: "openscad"

  zap trash: [
    "~/Library/Caches/org.openscad.OpenSCAD",
    "~/Library/Preferences/org.openscad.OpenSCAD.plist",
    "~/Library/Saved Application State/org.openscad.OpenSCAD.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
