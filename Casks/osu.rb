cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.902.1"
  sha256 arm:   "c174aa4fec6df105eac76faf376d7e1788b154880e85bc4ca0ddd9e09fe32a85",
         intel: "2853c498876c3a30e853f725e4423426f418e2ed7e892a2d157628e0e3ee5268"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
