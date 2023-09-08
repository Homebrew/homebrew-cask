cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.908.0"
  sha256 arm:   "665fd738b3dd50d13cefd0c6237efaac5f2c5ebb2c1dc876e21be99037520c77",
         intel: "dae5e643ef78f8df1aea689ed035ccaf14d008de13b247cce2e337dfab74705f"

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
