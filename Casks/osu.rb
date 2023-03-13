cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.305.0"
  sha256 arm:   "bdf0c4114f889c3e6e21cd5029c78cd923751a5595f770f24a7de293531261fe",
         intel: "74afaaab0073b8f5c7a9093c5374e9590056133fbc4bd1874a15704d3ab60414"

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
