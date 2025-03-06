cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.306.0"
  sha256 arm:   "ecc3998eaf86801f276facd384eba6ecb55b21a1b1c0ce1cc3a82de87aa5b042",
         intel: "9b497d947f550f973bd1c030544997c7828867c0b0265d16d6765dc61b6d9f9a"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
