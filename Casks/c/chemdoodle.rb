cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.8.2"
  sha256 arm:   "7a49585195b847817d33d5ecb4d4f1f21382be776daf2e167ca984ce92cd3fba",
         intel: "7ed1658afcb4bbb8c14fe1db7868eb4eb6879c20173472e44cfaba7ac16b76db"

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
