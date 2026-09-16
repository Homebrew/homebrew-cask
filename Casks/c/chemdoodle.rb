cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.12.0"
  sha256 arm:   "2788137fb34b4e73c0626611371ece19dc2d97e622051c7e69b7ef4e8bd17c39",
         intel: "2166955ab38e3736cdcfed98c147eb714c9ed2ad0d3d898514805e29f1ee1065"

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
