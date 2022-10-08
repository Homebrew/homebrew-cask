cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.1008.0"
  sha256 arm:   "de72a7d5bf4224bd950cf550bb0970e3b15379889ff82f8c93f60bcff5dcf9e0",
         intel: "773e09fb6ebf5a71f6f1e78e3142a42bd7c7454cf7751fe269ad642ca02760b0"

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
