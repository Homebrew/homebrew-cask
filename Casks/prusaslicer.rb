cask "prusaslicer" do
  version "2.2.0,202003211132"
  sha256 "4634361151e0ceb0b75cff6edafa523e3cc92d7979789c32ca50861eb0c3c7c6"

  # github.com/prusa3d/PrusaSlicer/ was verified as official when first introduced to the cask
  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.before_comma}/PrusaSlicer-#{version.before_comma}+-#{version.after_comma}.dmg"
  appcast "https://github.com/prusa3d/PrusaSlicer/releases.atom"
  name "PrusaSlicer"
  desc "G-code generator for 3D printers (RepRap, Makerbot, Ultimaker etc.)"
  homepage "https://www.prusa3d.com/slic3r-prusa-edition/"

  app "PrusaSlicer.app"

  zap trash: [
    "~/Library/Application Support/PrusaSlicer",
    "~/Library/Preferences/com.prusa3d.slic3r",
    "~/Library/Saved Application State/com.prusa3d.slic3r.savedState",
  ]
end
