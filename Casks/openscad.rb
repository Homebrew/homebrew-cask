cask "openscad" do
  version "2019.05"
  sha256 "df6f6f3d34ac0d07f533ec4ccf59082189fb37c0276c1b8df651291e2509420e"

  url "https://files.openscad.org/OpenSCAD-#{version}.dmg"
  appcast "https://github.com/openscad/openscad/releases.atom"
  name "OpenSCAD"
  homepage "https://www.openscad.org/"

<<<<<<< HEAD
  app 'OpenSCAD.app'
  binary 'OpenSCAD.app/Contents/MacOS/OpenSCAD', target: 'openscad'
=======
  app "OpenSCAD.app"
  binary "#{appdir}/OpenSCAD.app/Contents/MacOS/OpenSCAD", target: "openscad"
>>>>>>> upstream/core-code-patch-2

  zap trash: [
    "~/Library/Caches/org.openscad.OpenSCAD",
    "~/Library/Preferences/org.openscad.OpenSCAD.plist",
    "~/Library/Saved Application State/org.openscad.OpenSCAD.savedState",
  ]
end
