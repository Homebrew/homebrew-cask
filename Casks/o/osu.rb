cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.114.0"
  sha256 arm:   "c572d66eae95e8636b4b5a967d69369b9f4ae168b4136ff28e065719f7c79bff",
         intel: "350070e8d1379e426cb21aef54523b4368c0d75932b4b0be2cfa59079c5c1fdb"

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
