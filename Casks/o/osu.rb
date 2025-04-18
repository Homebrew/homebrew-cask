cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.418.0"
  sha256 arm:   "fe8c52744a65947f831898365cdcbeae554ebe2cb3cb2cbcfc00984b39e08bab",
         intel: "c38d60e9f2cbbdce2a0b73be6d6d1396911de0914471e45d1b1a8704ff313d2d"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
