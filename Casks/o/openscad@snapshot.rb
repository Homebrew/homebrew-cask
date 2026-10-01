cask "openscad@snapshot" do
  version "2026.10.01"
  sha256 "8286c3a64a2bde730b932eb4664fd4926b69819f55262d2a4df52dc8ef70c65b"

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
