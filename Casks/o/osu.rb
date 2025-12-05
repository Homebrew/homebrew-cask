cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.1205.0-lazer"
  sha256 arm:   "affeb58deb3e3a5f7d591cc135d82ac7200d033c1936b3887325f66081bb7bd0",
         intel: "f1cbf119c03859587cc96a609ada4b308fb365ee8083f92fd86058e1e7ccec5e"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?((\d+(?:\.\d+)+)(?:-\w+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "osu@tachyon"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
