cask "scratch" do
  version "3.25.0"
  sha256 "fc99b062b5b267fd9224004b96db8b7061da1fe5e446a6f66364f1816b7ef2c9"

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
