cask "scratch" do
  version "3.23.1"
  sha256 "17c0e385d2a3542a39bf057028dcfa87ca0cd3a4e7cf1cc711aabee289fa3806"

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
end
