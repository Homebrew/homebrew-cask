cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.1224.1"
  sha256 arm:   "3b6d9fc9f57ea7d3d98850dbd2b327ca9dc953ae033e05dad0541ab2a067d8f9",
         intel: "8adffaf71554c2aea42ec2e8c6f20bddaa85ac7a4888a12aa55856567f1fad9e"

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
