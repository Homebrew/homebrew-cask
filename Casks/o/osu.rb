cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1114.1"
  sha256 arm:   "943bcda439f17eb441f69203cdc9fe41b4532e99322231e1101582094a5f9e8e",
         intel: "e41e8a270f343c138373612f052b7f065619433adf46985a117ead785781c221"

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
