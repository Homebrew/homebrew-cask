cask "prusaslicer@preview" do
  version "3.0.0-alpha13"
  sha256 "811de1535304dc14c7061d5b5a4b557525c5241f24f96674ea9272f7ac7d03ab"

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
