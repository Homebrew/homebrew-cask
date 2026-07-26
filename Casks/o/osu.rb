cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.726.0-lazer"
  sha256 arm:   "d271fad4eb5fbf55f99dfb0de6d425c37f1f9f6b360fee99c9b2b4130780efff",
         intel: "d80d3d9f17ebf921802ee86f19ff7a29469411dc0ecebbf78daa3e41c3f07da8"

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
  depends_on :macos

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
