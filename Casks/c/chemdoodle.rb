cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.2.0"
  sha256 arm:   "4cd95a18a77e61eac2610b08775bcb89dc325f5d3abc10cb8e014027967b7ec9",
         intel: "bcd2611a98333e111b28861e4b33dc6ea0b578ad2162703fca7e5a2bb263d192"

  url "https://www.ichemlabs.com/downloads/ChemDoodle-macos-#{arch}-#{version}.dmg"
  name "ChemDoodle"
  name "ChemDoodle 2D"
  desc "2D chemical drawing, publishing and informatics"
  homepage "https://www.ichemlabs.com/"

  livecheck do
    url "https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/"
    regex(%r{href=.*?/ChemDoodle[._-]macos[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :el_capitan"

  suite "ChemDoodle"

  zap trash: "~/Library/Saved Application State/com.iChemLabs.ChemDoodle.savedState"
end
