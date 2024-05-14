cask "openscad@snapshot" do
  version "2024.05.13"
  sha256 "1ada31294f213fff70286b8c91f74842c8c54865523a3edc3c0ba86c0f105735"

  url "https://files.openscad.org/snapshots/OpenSCAD-#{version}.dmg"
  name "OpenSCAD"
  desc "Programmable solid 3D CAD modeller"
  homepage "https://www.openscad.org/downloads.html#snapshots"

  livecheck do
    url "https://files.openscad.org/snapshots/.snapshot_macos.js"
    regex(/OpenSCAD[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  deprecate! date: "2025-05-01", because: :unsigned

  conflicts_with cask: "openscad"

  app "OpenSCAD.app"
  binary "#{appdir}/OpenSCAD.app/Contents/MacOS/OpenSCAD", target: "openscad"

  zap trash: [
    "~/Library/Caches/org.openscad.OpenSCAD",
    "~/Library/Preferences/org.openscad.OpenSCAD.plist",
    "~/Library/Saved Application State/org.openscad.OpenSCAD.savedState",
  ]
end
