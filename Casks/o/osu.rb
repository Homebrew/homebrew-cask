cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.418.0-lazer"
  sha256 arm:   "66cc55a95627a041beb23b0761c7f1e8cfd9282a804ee2e5416f250966d172e2",
         intel: "7ea09debd0799ff5fe9c86e462b4e6beb798593ca3370dc2678873a4ac5c5247"

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
