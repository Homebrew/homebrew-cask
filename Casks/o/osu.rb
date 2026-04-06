cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.406.0-lazer"
  sha256 arm:   "7b72496ffefbe533e2de6e9a59cc09d4d7c60a1b2ed1bd7fc33366ca8d60dbe0",
         intel: "8d749cf686e3fc8c66e44f44674737e17477a267222f4ac978a2b89b7ec43b8c"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?((\d+(?:\.\d+)+)(?:-\w+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "osu@tachyon"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
