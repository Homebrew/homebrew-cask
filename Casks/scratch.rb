cask "scratch" do
  version "3.28.0"
  sha256 "7f39bc8232b5f14f33525c0a3b44cb9a276fda43e4432984fede0dbdd1499101"

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20#{version}.dmg"
  name "Scratch"
  desc "Programs interactive stories, games, and animations"
  homepage "https://scratch.mit.edu/download"

  livecheck do
    url "https://downloads.scratch.mit.edu/desktop/Scratch.dmg"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Scratch #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Scratch",
    "~/Library/Preferences/edu.mit.scratch.scratch-desktop.plist",
  ]
end
