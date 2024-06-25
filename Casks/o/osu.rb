cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.625.0"
  sha256 arm:   "a8bdbd22dc586c4800149151c22c4048c00309af67766c8f50e003e632efe1aa",
         intel: "dec39b77d4d277436352aabf08e8d52dd13e3d43668252898f9f39582a0ce3ee"

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
