cask "prusaslicer" do
  version "2.3.0,202101111304"
  sha256 "e72e91183a5631b5b866fcb905e696148f7f691eaae37b7c5224af67d97a0663"

  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.before_comma}/PrusaSlicer-#{version.before_comma}+-#{version.after_comma}.dmg",
      verified: "github.com/prusa3d/PrusaSlicer/"
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
