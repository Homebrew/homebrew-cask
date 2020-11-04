cask "freecad" do
  version "0.18.4,16146"
  sha256 :no_check # required as upstream package is updated in-place

  # github.com/FreeCAD/FreeCAD/ was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.before_comma}/FreeCAD_#{version.major_minor}-#{version.after_comma}-rev1-OSX-x86_64-conda-Qt5-Py3.dmg"
  appcast "https://github.com/FreeCAD/FreeCAD/releases.atom"
  name "FreeCAD"
  desc "3D parametric modeler"
  homepage "https://www.freecadweb.org/"

  conflicts_with cask: "homebrew/cask-versions/freecad-pre"
  depends_on macos: ">= :sierra"

  app "FreeCAD.app"
end
