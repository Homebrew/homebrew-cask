cask "freecad" do
  arch arm: "arm64", intel: "intel_x86"

  version "0.21.1"
  sha256 arm:   "b6959ca9e0e2f7cddda2cf1e97a26f3e2e65205f2e8e53b3c5dccd062f0be14f",
         intel: "633dd754e7732c531a019fe74068e43883f8f329c25fe85bfcc91fa26186451f"

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
