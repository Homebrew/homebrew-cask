cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.727.0"
  sha256 arm:   "36b2a3cec9e1dc03647df079eb35af3a170457a734d4a423f5641bd611450f39",
         intel: "5acb398141ecc895377d2c3f3f0c40f1eb67867f49626839faba41b48beac271"

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
