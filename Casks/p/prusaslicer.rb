cask "prusaslicer" do
  version "2.9.6"
  sha256 "94fd7b8a9f87c9631e1c71739b15b184fc5f4c0ceabd69072f1c78f229a4fe40"

  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version}/PrusaSlicer-#{version}.dmg",
      verified: "github.com/prusa3d/PrusaSlicer/releases/download/"
  name "PrusaSlicer"
  desc "G-code generator for 3D printers (RepRap, Makerbot, Ultimaker etc.)"
  homepage "https://www.prusa3d.com/slic3r-prusa-edition/"

  livecheck do
    url "https://files.prusa3d.com/wp-content/uploads/repository/PrusaSlicer-settings-master/live/PrusaSlicer.version"
    regex(/release\s*=\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "Original Prusa Drivers/PrusaSlicer.app"

  zap trash: [
    "~/Library/Application Support/PrusaSlicer",
    "~/Library/Preferences/com.prusa3d.slic3r",
    "~/Library/Saved Application State/com.prusa3d.slic3r.savedState",
  ]
end
