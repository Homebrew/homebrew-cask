cask "prusaslicer" do
  version "2.3.3,202107161034"
  sha256 "02b5820a371f4eb7b74ae7acfc4f0c32181c2eada4d00b97853d0559edff6462"

  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.before_comma}/PrusaSlicer-#{version.before_comma}+universal-#{version.after_comma}.dmg",
      verified: "github.com/prusa3d/PrusaSlicer/"
  name "PrusaSlicer"
  desc "G-code generator for 3D printers (RepRap, Makerbot, Ultimaker etc.)"
  homepage "https://www.prusa3d.com/slic3r-prusa-edition/"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/PrusaSlicer-(\d+(?:\.\d+)*)\+universal-(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "PrusaSlicer.app"

  zap trash: [
    "~/Library/Application Support/PrusaSlicer",
    "~/Library/Preferences/com.prusa3d.slic3r",
    "~/Library/Saved Application State/com.prusa3d.slic3r.savedState",
  ]
end
