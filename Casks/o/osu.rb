cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.312.0"
  sha256 arm:   "3147d9f46ebfee700f5b683b3b1f39ed1d982d38a02f3afb9790bcf2e0215e8f",
         intel: "43a4a1d143b9b318c176c0956bcb79d3f50450c8aba486eaedca2e07879c9cd7"

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
