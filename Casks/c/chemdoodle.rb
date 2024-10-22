cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.7.0"
  sha256 arm:   "3097e1db6491d784f17048180cfd5026a2d44270716e06dbc0cb5db3ea036db7",
         intel: "09dd205b08f08cc5f5ef21af10844068c6746ade75b8ad0b36f3c5788a61b989"

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
