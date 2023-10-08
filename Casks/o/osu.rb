cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1008.0"
  sha256 arm:   "30b85dcbe9f880dd48a0456705d4aa4251022d0266e895cef39df178a11488a5",
         intel: "8b842b68e2ef2ddd6327cbbd53d5f610c6d3367d1c2bfeebb9aaa74beaa54f42"

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
