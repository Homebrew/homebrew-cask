cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.301.0"
  sha256 arm:   "b5e9068e6504d4943a372235ddaf2be3cec4c182f9051358f13b76d80c0f702b",
         intel: "714d23d6a0c8420d4453fa344f12e691b041789e78dad6afbafe6d4c0114b9a2"

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
