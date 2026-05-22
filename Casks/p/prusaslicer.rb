cask "prusaslicer" do
  version "2.9.5"
  sha256 "e7705ff5eef314d4e86b250086e24ba7ec3b28d247232e45e211420c31a5700f"

  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version}/PrusaSlicer-#{version}.dmg",
      verified: "github.com/prusa3d/PrusaSlicer/releases/download/"
  name "PrusaSlicer"
  desc "G-code generator for 3D printers (RepRap, Makerbot, Ultimaker etc.)"
  homepage "https://www.prusa3d.com/slic3r-prusa-edition/"

  livecheck do
    url "https://files.prusa3d.com/wp-content/uploads/repository/PrusaSlicer-settings-master/live/PrusaSlicer.version"
    regex(/^\[common\][^\[]*?^release\s*=\s*(\d+(?:\.\d+)+)/mi)
  end

  depends_on :macos

  app "Original Prusa Drivers/PrusaSlicer.app"

  zap trash: [
    "~/Library/Application Support/PrusaSlicer",
    "~/Library/Preferences/com.prusa3d.slic3r",
    "~/Library/Saved Application State/com.prusa3d.slic3r.savedState",
  ]
end
