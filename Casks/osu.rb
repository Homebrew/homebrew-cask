cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.1117.0"
  sha256 arm:   "3966b7a0c7f81cb4dde61959917c81aa0ab8b744e645d0072ce0cde506546b9d",
         intel: "a44d2383af5182d2cdc132e4c007bfcb76b1739eb72bb79e8158093dcbf242da"

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
