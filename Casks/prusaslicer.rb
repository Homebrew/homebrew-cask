cask "prusaslicer" do
  version "2.4.2,202204251114"
  sha256 "a8972cf5d8c9a5626b18fd3ebd2ce190fda032b790bedf7d3702ab39837d3e51"

  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.csv.first}/PrusaSlicer-#{version.csv.first}+universal-#{version.csv.second}.dmg",
      verified: "github.com/prusa3d/PrusaSlicer/"
  name "PrusaSlicer"
  desc "G-code generator for 3D printers (RepRap, Makerbot, Ultimaker etc.)"
  homepage "https://www.prusa3d.com/slic3r-prusa-edition/"

  livecheck do
    url "https://github.com/prusa3d/PrusaSlicer/releases/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/PrusaSlicer-(\d+(?:\.\d+)*)\+universal-(\d+)\.dmg}i)
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
