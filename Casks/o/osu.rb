cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.102.1-lazer"
  sha256 arm:   "08132ca0af540d09bb80f6525553d17f92736c4cb3a5f0879266ddeddec8db0f",
         intel: "6524178688ee0ce39aeda8dec361d8e80a0b3f739e8db67037d3a29a07eb1a89"

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
