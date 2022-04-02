cask "freecad" do
  version "0.19.3"
  sha256 "ece919c8551e8624a7fbda92d940d636d2e3e69924baecf0fb9634ed9b4c3992"

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version}/FreeCAD_#{version}-OSX-x86_64-conda.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  name "FreeCAD"
  desc "3D parametric modeler"
  homepage "https://www.freecadweb.org/"

  conflicts_with cask: "homebrew/cask-versions/freecad-pre"
  depends_on macos: ">= :sierra"

  app "FreeCAD.app"
end
