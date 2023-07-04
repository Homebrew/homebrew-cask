cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.621.0"
  sha256 arm:   "e786c0289757f0becb33baa37e689bf1378dae9e5760a4f56f79102fcab52f29",
         intel: "5371a041e3d98b90e5fc64ca4a068270b483661122d33dd769d6239add78ae01"

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
