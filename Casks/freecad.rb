cask "freecad" do
  version "0.19.2,24291"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.csv.first}/FreeCAD_#{version.major_minor}-#{version.csv.second}-macOS-x86_64-conda.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  name "FreeCAD"
  desc "3D parametric modeler"
  homepage "https://www.freecadweb.org/"

  livecheck do
    url "https://github.com/FreeCAD/FreeCAD/releases"
    strategy :page_match do |page|
      match = page.match(
        %r{href=.*?/(\d+(?:\.\d+)*)/FreeCAD_(?:\d+(?:\.\d+)*)-(\d+(?:-rev\d+)?)-macOS-x86_64-conda\.dmg}i,
      )
      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "homebrew/cask-versions/freecad-pre"
  depends_on macos: ">= :sierra"

  app "FreeCAD.app"
end
