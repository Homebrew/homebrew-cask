cask "openscad@snapshot" do
  version "2026.09.29"
  sha256 "865324cc5d6d3b4c6911d4b030a03b1701e3a4dcb73f6ab3b548ff0860ddf813"

  url "https://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  name "OpenSCAD"
  desc "Programmable solid 3D CAD modeller"
  homepage "https://www.openscad.org/downloads.html#snapshots"

  livecheck do
    url "https://files.openscad.org/snapshots/.snapshot_macos.js"
    regex(/OpenSCAD[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with cask: "openscad"
  depends_on macos: :monterey

  app "OpenSCAD.app"
  binary "#{appdir}/OpenSCAD.app/Contents/MacOS/OpenSCAD", target: "openscad"

  uninstall quit: "org.openscad.OpenSCAD"

  zap trash: [
    "~/Library/Application Support/OpenSCAD",
    "~/Library/Caches/org.openscad.OpenSCAD",
    "~/Library/Preferences/org.openscad.OpenSCAD.plist",
    "~/Library/Saved Application State/org.openscad.OpenSCAD.savedState",
  ]
end
