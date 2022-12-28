cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.1228.0"
  sha256 arm:   "39be01250a9b17d8a34d7814d4d617e2d4c24168b8aeda3b44f45872a3684a28",
         intel: "eefe0f48eac28aa68ead43cf8d87c990ed1be648b7e363f79a52df4a71ce06e7"

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
