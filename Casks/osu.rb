cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.419.0"
  sha256 arm:   "465c50532d7e7296e618edac79de945799763f7548c9cac78c8760c71684479f",
         intel: "60feb924b072c4f1f910c2ba2d9195dfb4a7590f8bdd22c6967b33768d37bf26"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
