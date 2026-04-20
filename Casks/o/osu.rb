cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.421.0-lazer"
  sha256 arm:   "b5f5205f0b7c64fa2d2ddb9840fed61d6fd243510abc975c92c13dcf63fe7d81",
         intel: "76c0b0acd2d45a6f4b79dc03eb8ae71fec6894f16c967cb745b4508ab0448afe"

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
