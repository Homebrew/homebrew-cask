cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.4.0"
  sha256 arm:   "a2a8e5b6f14ea87c0209f49df024ebd1144c8bbc90fb0d175923926fd1fafedf",
         intel: "a004b9cc9bfcc26f8178c51cd707d8cdc3d38d725ae39f8d116afbddcd1df361"

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
