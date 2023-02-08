cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.207.0"
  sha256 arm:   "6741df8704870da3276ac76f65b261124e1ef23f02516d1caafd439bd1082587",
         intel: "78e2af930cf3415d2172d1174cb7891ab63e7bb4e9b6fd24cd30692d9ddbe2e9"

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
