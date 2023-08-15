cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.815.0"
  sha256 arm:   "1db54f73f7aab5e2b3d552b1ab80cb48afc97c24f987ae77275fe5a6700910fd",
         intel: "353afae8727b36226079e0c2a25b3fdaa101ba19d1d6c1375aff4554dc8fa968"

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
