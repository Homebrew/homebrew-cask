cask "freecad" do
  arch arm: "arm64", intel: "intel_x86"

  version "0.21.0"
  sha256 arm:   "7e75a2fdc7588ba8d8f0effc415516128f70b8e1d00c808804b6e0071b233925",
         intel: "73c81bb8428255da92867cff8beb9cfc7c736b057339451aa76a9b0037b23707"

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version}/FreeCAD-#{version}-mac-#{arch}.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  name "FreeCAD"
  desc "3D parametric modeler"
  homepage "https://www.freecad.org/"

  livecheck do
    url "https://www.freecad.org/downloads.php"
    regex(/FreeCAD[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "FreeCAD.app"

  zap trash: [
    "~/Library/Application Support/FreeCAD",
    "~/Library/Caches/FreeCAD",
    "~/Library/Preferences/FreeCAD",
    "~/Library/Preferences/com.freecad.FreeCAD.plist",
  ]
end
