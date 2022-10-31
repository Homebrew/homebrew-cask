cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.1031.0"
  sha256 arm:   "0802d24f5519a462e3f505cfc3d3e1c6107fdd76f0afda865165eed002564648",
         intel: "adc30e07d96bddd1dd7e39a2394033b4b468961ef4ec3900d1987fa8dea74b37"

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
