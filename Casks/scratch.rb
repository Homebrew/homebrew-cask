cask "scratch" do
  version "3.19.2"
  sha256 "b5791f6eec147388e0c042230ba7cef2030a09a05bc4983296c8bb24cfa85750"

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
