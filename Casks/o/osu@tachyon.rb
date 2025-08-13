cask "osu@tachyon" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.813.0-tachyon"
  sha256 arm:   "63594bad3d02094a605d799a0d9703c53567ec4821c7e86e98a6de42d290baf1",
         intel: "d5ef877d8e10e4402dd70b3c92e1d9867f0534666360e472910afaa97ca4d23b"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu! (tachyon)"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?((\d+(?:\.\d+)+)(?:-tachyon)?)$/i)
  end

  auto_updates true
  conflicts_with cask: "osu"
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
