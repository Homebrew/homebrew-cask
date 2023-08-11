cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.811.0"
  sha256 arm:   "27efad3cddb823d5c6d39adb22957abf63e7e7b5dad6a281afa07741d93a48f5",
         intel: "f60a4448f8e9c977b08c718235e00bc968f692c683de08c7d671dedabc872860"

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
