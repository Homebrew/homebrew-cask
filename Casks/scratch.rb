cask "scratch" do
  version "3.15.0"
  sha256 "fa3459ffdf01453e41aa8b9f0f43ad6da88e50006aa04d9b525370bc770b66f0"

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20Desktop-#{version}.dmg"
  name "Scratch"
  desc "Programs interactive stories, games, and animations"
  homepage "https://scratch.mit.edu/download"

  depends_on macos: ">= :high_sierra"

  app "Scratch Desktop.app"
end
