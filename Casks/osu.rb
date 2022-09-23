cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.923.1"
  sha256 arm:   "89019c676c2fd4421e80a662dbf405dad01cdf73871e60af53aac58b28a690a3",
         intel: "e45b576a6870b700586e20fdb73923352ce4d7b98af87fdd32bb8f7522622fdf"

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
