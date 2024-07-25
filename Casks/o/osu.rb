cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.725.0"
  sha256 arm:   "f0cfd6cbae23786cc8c985664d1b9cc0fa112bca0b471fded341e89e5222c3b0",
         intel: "d851b3ecf42023249d60cd06b0e1f0185dd8790fe25dfd4b6d28d7808bdcdef7"

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
