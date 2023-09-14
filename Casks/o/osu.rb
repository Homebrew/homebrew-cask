cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.914.0"
  sha256 arm:   "17e2909abe97400c28fd05e14688396c7da96263f8ee3059e7ec7f7a10f41376",
         intel: "81d2cbf1ac0e276f64c9a6ca435a91ba121bb54169571a373e8b20f168d33c90"

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
