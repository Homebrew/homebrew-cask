cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.131.0"
  sha256 arm:   "a2167a0a686395ce7bfedbb497fdef533dd17c72738f6b0584cf8bf71a080869",
         intel: "a22590a7b73dfff5b883472c348b1e0d4d11e65dba4ae6835a6abd36860b5a07"

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
