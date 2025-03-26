cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.8.0"
  sha256 arm:   "1f125119d34c734a1a1417cbe9a23cfdccf3da6d01a16cdd8b54de299d492ce6",
         intel: "971c71a2bbadafcf0e996d56496817b9a41025399b300118430977e5ed2ff452"

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
