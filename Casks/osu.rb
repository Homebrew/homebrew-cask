cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.513.0"
  sha256 arm:   "3e06c1686358f6d2eef1fe5617526171c5a5c34a9feb6a86e16a9ad7a55422c2",
         intel: "46f13b8ac97f1074638a42e0993eb57cd014c80bb4d048770709d1e201738744"

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
