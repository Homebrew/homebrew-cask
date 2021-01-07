cask "openscad" do
  version "2019.05"
  sha256 "df6f6f3d34ac0d07f533ec4ccf59082189fb37c0276c1b8df651291e2509420e"

  url "https://files.openscad.org/OpenSCAD-#{version}.dmg"
  name "OpenSCAD"
  desc "Programmable solid 3D CAD modeller"
  homepage "https://www.openscad.org/"

  livecheck do
    url "https://files.openscad.org/"
    strategy :page_match
    regex(/href=.*?OpenSCAD-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "OpenSCAD.app"

  zap trash: [
    "~/Library/Caches/org.openscad.OpenSCAD",
    "~/Library/Preferences/org.openscad.OpenSCAD.plist",
    "~/Library/Saved Application State/org.openscad.OpenSCAD.savedState",
  ]
end
