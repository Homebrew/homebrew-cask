cask "openscad@snapshot" do
  version "2025.07.31"
  sha256 "4f3f6c4b0d28b0af34f647e8a3a8aa26e3dbd2094a3dc5bc1f3fbd79af14b3cd"

  url "https://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  name "OpenSCAD"
  desc "Programmable solid 3D CAD modeller"
  homepage "https://www.openscad.org/downloads.html#snapshots"

  livecheck do
    url "https://files.openscad.org/snapshots/.snapshot_macos.js"
    regex(/OpenSCAD[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with cask: "openscad"

  app "OpenSCAD.app"
  binary "#{appdir}/OpenSCAD.app/Contents/MacOS/OpenSCAD", target: "openscad"

  zap trash: [
    "~/Library/Caches/org.openscad.OpenSCAD",
    "~/Library/Preferences/org.openscad.OpenSCAD.plist",
    "~/Library/Saved Application State/org.openscad.OpenSCAD.savedState",
  ]
end
