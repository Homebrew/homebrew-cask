cask "prusaslicer" do
  version "2.5.0"
  sha256 "73c30212f3eca4e494d60b0c14648c002bd9876f7ba39587f7315a27f6151296"

  url "https://cdn.prusa3d.com/downloads/drivers/prusa3d_mac_#{version.dots_to_underscores}.dmg"
  name "PrusaSlicer"
  desc "G-code generator for 3D printers (RepRap, Makerbot, Ultimaker etc.)"
  homepage "https://www.prusa3d.com/slic3r-prusa-edition/"

  livecheck do
    url "https://files.prusa3d.com/?latest=slicer-stable"
    regex(%r{<h2>VERSION\s(\d+(?:\.\d+)+).*</h2>}i)
  end

  app "PrusaSlicer.app"

  zap trash: [
    "~/Library/Application Support/PrusaSlicer",
    "~/Library/Preferences/com.prusa3d.slic3r",
    "~/Library/Saved Application State/com.prusa3d.slic3r.savedState",
  ]
end
