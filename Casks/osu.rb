cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.910.0"
  sha256 arm:   "ce12fb22f793e18513ec272abcb7b45a104de2ff36080a29e87bb2c2e32091bb",
         intel: "ae2eec9aaeca3683ee597a4fd3650339ab18415c4c104755360b89eff7ddb39b"

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
