cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.5.0"
  sha256 arm:   "b90b3a73a634f476404e86e2d9b5d7dd57ca2d8bde007217cd6eef59a5850df0",
         intel: "6a3125e8a9ae66b64654b57f392389bded2054a78e413eaf4da9330e67d0125d"

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
