cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.521.2"
  sha256 arm:   "a95b2b2378a5ac71371299a16c41de5a3da080b5c77d2bfba377c0b77ec1e8fe",
         intel: "47b3d8323af75880def450afac56a164edb3b00fcdb766784b2ef9db7c89b210"

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
