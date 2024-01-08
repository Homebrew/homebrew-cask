cask "freecad" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "0.21.2"
  sha256 arm:   "88f51e816075c586bcde89eab0b5edc4a260294eefc11bf5a917d7818330ad50",
         intel: "e22dfd804c2b09aa559cd3ec2de6e1d7321022c04a354857fc9936b7b6d2e5bb"

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version}/FreeCAD-#{version}-macOS-#{arch}.dmg",
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
