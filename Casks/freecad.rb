cask "freecad" do
  version "0.20.0"
  sha256 "fc62c10c408a00ed9c5c688f559464e4831f2a8aec6c9c374a024ba188f0e0af"

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.major_minor}/FreeCAD-#{version}-OSX-i386.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  name "FreeCAD"
  desc "3D parametric modeler"
  homepage "https://www.freecadweb.org/"

  livecheck do
    url "https://www.freecadweb.org/downloads.php"
    regex(/href=.*?FreeCAD[._-]v?(\d+(?:\.\d+)+)-OSX-i386\.dmg/i)
  end

  conflicts_with cask: "homebrew/cask-versions/freecad-pre"
  depends_on macos: ">= :sierra"

  app "FreeCAD.app"
end
