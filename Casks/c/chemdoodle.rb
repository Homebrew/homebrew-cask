cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.3.0"
  sha256 arm:   "d176581fece80fda33deacac9ab43107af2e6bbb37a29e739aa39b83bbe8ba33",
         intel: "4f08edec18d6af80243d958952b047e389780e34f3efb561b3c7ea7ca795cc95"

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
