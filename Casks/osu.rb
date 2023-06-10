cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.610.0"
  sha256 arm:   "9775f58b82ee6d69ce6cd3a32975fe173046d14ef5b49874d2b3697db81ee578",
         intel: "a9335bdecac8c0d453bb5a7b3d43dec52dd1f7753f67cd453fd28f7f968f071c"

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
