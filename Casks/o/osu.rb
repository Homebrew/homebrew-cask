cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.1208.0"
  sha256 arm:   "0e9cc110b4050ceecbaa14eed21526c5f8f960785b19e9da391828fa72d1bc79",
         intel: "1e66c2b051c1bc5c56c53857aa651d2dbb4a588a695f512b475bedeb9022edb9"

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
