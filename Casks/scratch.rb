cask "scratch" do
  version "3.17.1"
  sha256 "e3b84a84afa75f0b42cd0cbf605ba60a3172a9f8f9c8598c6a5af13ae2cc347d"

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20#{version}.dmg"
  name "Scratch"
  desc "Programs interactive stories, games, and animations"
  homepage "https://scratch.mit.edu/download"

  depends_on macos: ">= :high_sierra"

  app "Scratch Desktop.app"
end
