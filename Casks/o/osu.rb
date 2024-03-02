cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.302.0"
  sha256 arm:   "c0460d094a98a601af95d87f4e8006d4450ce7d62b413476fc19ed6326f585fd",
         intel: "cd00b9efcffc79dbfcb27c35eb4c31ae070fa7912e603f23b0576838215658af"

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
