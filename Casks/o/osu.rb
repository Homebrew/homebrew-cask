cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.906.1"
  sha256 arm:   "40a6168da151043b8df8911319738a66be428900f7164e16abee08b017252bce",
         intel: "9b385fc66db29c2cad8f413dc39494c3a217aa98e9af845d61b7b5bc0f5b245b"

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
