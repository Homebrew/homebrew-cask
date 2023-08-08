cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.803.0"
  sha256 arm:   "9b96e848549467df92cb99a059f41d86319c042f298c01e0e07600255e3fae92",
         intel: "b58657758ee9b2b5a2c29c9d46befcffaaab63bd770543ea7e6a0cac9fbe968a"

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
