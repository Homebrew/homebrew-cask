cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.8.1"
  sha256 arm:   "99c00552b5c628c2418b1f03873d348f619d99f35e7cc0ddd0d899bc00d3d67b",
         intel: "3b8c020c85e89a5715b7a17dd204db134db786d11921686201de78d8c5051756"

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
