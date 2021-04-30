cask "scratch" do
  version "3.21.0"
  sha256 "6b5fc41416ceb6669071c15b0c068688fdcb36fbe7b8638814c25c8081f9090a"

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
