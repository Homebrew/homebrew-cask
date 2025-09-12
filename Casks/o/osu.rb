cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.912.0-lazer"
  sha256 arm:   "8eda72e694580c819e9972d813a2e5f13882d9060fa18c0632bd3b723456ba98",
         intel: "e0baa03c1747931a8c39b0013b9987b4f1588e5a87547057d4ee66488ee3ad91"

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
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
