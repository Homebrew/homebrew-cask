cask "prusaslicer@preview" do
  version "3.0.0-alpha14"
  sha256 "9ae809965f0facaf868ff7ea38927b53ce6ed7da901acca5a1d99bed3446eaf1"

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

  zap trash: [
    "~/Library/Application Support/PrusaSlicer3-dev",
    "~/Library/Preferences/com.prusa3d.slic3r.plist",
  ]
end
