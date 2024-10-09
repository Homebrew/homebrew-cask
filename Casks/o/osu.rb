cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.1009.1"
  sha256 arm:   "170087f239f0151dd1f866e6bb0cdfbe5cb4fc3b68a74b4c949f8d0483d61b6f",
         intel: "ef7fe1defd86721fc218148019b44ff9b2f901413ef84b2eca66400fad0e9a83"

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
