cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.9.0"
  sha256 arm:   "7551526d837e70358e7a78c88a92a68afff3f014d3372d9ec37f2d09bc90795f",
         intel: "ca868932fb4dee57d68c1ea07391ce435600d4ff0b260ff14d996b52aa8786a1"

  url "https://www.ichemlabs.com/downloads/ChemDoodle-macos-#{arch}-#{version}.dmg"
  name "ChemDoodle"
  name "ChemDoodle 2D"
  desc "2D chemical drawing, publishing and informatics"
  homepage "https://www.ichemlabs.com/"

  livecheck do
    url "https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/"
    regex(%r{href=.*?/ChemDoodle[._-]macos[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  suite "ChemDoodle"

  zap trash: "~/Library/Saved Application State/com.iChemLabs.ChemDoodle.savedState"
end
