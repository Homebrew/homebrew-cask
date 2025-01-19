cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.118.0"
  sha256 arm:   "7e50623b6d88c0d35fe45283fbcf364a8fb7d3067608bde476f5af8b85c56341",
         intel: "71c31b8b04e747421a59204e2c1f5a8b7fb7fa9efc75396108d3bfda6d1bcf9b"

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
