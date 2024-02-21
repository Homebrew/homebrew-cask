cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.221.0"
  sha256 arm:   "6e8767fff92afa107729ded627c66b245a8030b585932ae83b64467f1741b43b",
         intel: "d99f98d3533eb2069cc532a79c1b1c0aa98523be9cf6be92e20501f5e9f2c382"

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
