cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1008.1"
  sha256 arm:   "507a28fd61110069b9d689a8d8eaff2f2a1d745da548a1ea393a0adaf583cfc6",
         intel: "d3e9fa1b898df1f549d52721927a089138fe24e4949b5482c72bc7ff739391dd"

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
