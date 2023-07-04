cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.1.0"
  sha256 arm:   "d0563d53138543974eb76d2487067a35759b2f8056fea35e13b65a333fb5eda5",
         intel: "dc1125e29807725c2d2aae51e7dcdbdc9b393a9a0a5c5ed054f995ad63ef8c80"

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
