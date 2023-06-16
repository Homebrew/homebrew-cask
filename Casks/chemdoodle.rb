cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.0.0"
  sha256 arm:   "bfb602106034ac916c33d1f5c3d5018d1d135ee7d5c5598b449c826982ee58ac",
         intel: "fc2c58161d738bbaafaedc82a6c9a056d9888f40b4e7417b7bdd4beaa4c5d29a"

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
