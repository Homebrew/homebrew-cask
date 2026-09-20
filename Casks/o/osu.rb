cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.920.0-lazer"
  sha256 arm:   "59ffd3ef6e17542b21b01cbb0f6ce4a13b7baa532739778f5e452dbfbc918a3d",
         intel: "8b70d1d062c0f1f4ff3f7527f5c61ea52c765147fe4bd8b8355c382380087b1d"

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
