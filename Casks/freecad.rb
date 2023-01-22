cask "freecad" do
  version "0.20.2,2022-12-27"
  sha256 "3808bdf0751a70770b1d561269d9d014f9c486eb49bc4e187d106d3d2664d347"

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.csv.first.hyphens_to_dots}/FreeCAD_#{version.csv.first}-#{version.csv.second}-conda-macOS-x86_64-py310.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  name "FreeCAD"
  desc "3D parametric modeler"
  homepage "https://www.freecadweb.org/"

  livecheck do
    url "https://www.freecadweb.org/downloads.php"
    strategy :page_match do |page|
      match = page.match(/href=.*?FreeCAD[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:-\d+)+).*?\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "homebrew/cask-versions/freecad-pre"
  depends_on macos: ">= :sierra"

  app "FreeCAD.app"
end
