cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.617.0"
  sha256 arm:   "b58a138efacf38cdeb9e082b1f6d2c32e867c1d40c862436c63d84e05345f5b0",
         intel: "9fb360672479c336e428415c51f50fed5f9fcac1e3203968c3df0e0ecddc4886"

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
