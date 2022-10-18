cask "prusaslicer" do
  version "2.5.0,202209060719"
  sha256 "b790aabf043e67aadca2ff2384ad377be71a40b26e2abe87f8d96cc4c228a9b0"

  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.csv.first}/PrusaSlicer-#{version.csv.first}+MacOS-universal-#{version.csv.second}.dmg",
      verified: "github.com/prusa3d/PrusaSlicer/"
  name "PrusaSlicer"
  desc "G-code generator for 3D printers (RepRap, Makerbot, Ultimaker etc.)"
  homepage "https://www.prusa3d.com/slic3r-prusa-edition/"

  livecheck do
    url "https://github.com/prusa3d/PrusaSlicer/releases/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/PrusaSlicer-(\d+(?:\.\d+)*)\+MacOS-universal-(\d+)\.dmg}i)
      next if match.blank?

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
