cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.6.0"
  sha256 arm:   "2472713e00f2895e061198552c0fd0758755196c3acb068424e100ef0a896be3",
         intel: "0c4fc4def138e46a2de40f2879f9c5cfdbdf59569f74b73f0b4b63517c75ab7a"

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
