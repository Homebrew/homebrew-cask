cask "prusaslicer" do
  version "2.7.0,202311231501"
  sha256 "9a8b5d5b4ed771877d55d311fbf7ebebe35b5c84a4eb5ff310ec2570fd5f9155"

  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.csv.first}/PrusaSlicer-#{version.csv.first}+MacOS-universal-#{version.csv.second}.dmg",
      verified: "github.com/prusa3d/PrusaSlicer/"
  name "PrusaSlicer"
  desc "G-code generator for 3D printers (RepRap, Makerbot, Ultimaker etc.)"
  homepage "https://www.prusa3d.com/slic3r-prusa-edition/"

  livecheck do
    skip "No reliable way to get version info"
  end

  app "PrusaSlicer.app"

  zap trash: [
    "~/Library/Application Support/PrusaSlicer",
    "~/Library/Preferences/com.prusa3d.slic3r",
    "~/Library/Saved Application State/com.prusa3d.slic3r.savedState",
  ]
end
