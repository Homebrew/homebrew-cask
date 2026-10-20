cask "prusaslicer@preview" do
  version "3.0.0-alpha12"
  sha256 "a1f79dda1745e070774999f056d839bb5bd4a971d7f4cd876de3dde93ec5a436"

  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version}/PrusaSlicer-#{version}.dmg"
  name "PrusaSlicer Preview"
  desc "G-code generator for 3D printers (RepRap, Makerbot, Ultimaker etc.)"
  homepage "https://www.prusa3d.com/slic3r-prusa-edition/"

  livecheck do
    url "https://github.com/prusa3d/PrusaSlicer.git"
    regex(/^version[._-]v?(\d+(?:\.\d+)+[._-](?:alpha|beta|rc)\d+)$/i)
    strategy :git
  end

  depends_on :macos

  app "PrusaSlicer-#{version}.app"

  zap trash: "~/Library/Application Support/PrusaSlicer3-dev"
end
