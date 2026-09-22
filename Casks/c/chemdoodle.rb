cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.12.1"
  sha256 arm:   "e6f42606bf85a6e44d1ced15e9e06e3dca114a83a37ac9f4946fb0537f7ae394",
         intel: "27f6cd378af4fda331786af4c00da9265395c30bf3d697bb65dc05b544854317"

  url "https://www.ichemlabs.com/downloads/ChemDoodle-macos-#{arch}-#{version}.dmg"
  name "ChemDoodle"
  name "ChemDoodle 2D"
  desc "2D chemical drawing, publishing and informatics"
  homepage "https://www.ichemlabs.com/"

  livecheck do
    url "https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/"
    regex(%r{href=.*?/ChemDoodle[._-]macos[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on :macos

  suite "ChemDoodle"

  zap trash: "~/Library/Saved Application State/com.iChemLabs.ChemDoodle.savedState"
end
