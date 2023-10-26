cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1026.0"
  sha256 arm:   "a5fc03ea024726e9ef042e45795590bdced7a6bde35f4a032520b77b8adff434",
         intel: "9f559185a60b885b326836db43346cbbd040f9b202c5d13765b55132dbd0f400"

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
