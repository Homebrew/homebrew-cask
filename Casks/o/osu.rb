cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1218.0"
  sha256 arm:   "93c02bbc0b652caedacd9b06ecb678fb504f2364cd99a1e3b546e938667bcb17",
         intel: "8479d2fd09a4751668467280a552034e7d6c2a673daab226e36c560be5428746"

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
