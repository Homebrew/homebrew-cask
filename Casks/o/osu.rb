cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.726.0"
  sha256 arm:   "ebbb5562a1f5ef7e79b4f42ebcdf098fab1bec5d947de918657ba61490f82ea0",
         intel: "d0475b49747b2d2fe68a4274c8cfe99e4bd61eeacbb125f7e51b6b0cd61b230b"

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
