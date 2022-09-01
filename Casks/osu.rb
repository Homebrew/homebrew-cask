cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.902.0"
  sha256 arm:   "315ba2973efc61da15d96bfe29c97773bf92f9afca8cdb9c5c45765496338ef2",
         intel: "c40ca0174f87a2e9d1748bce3af22d4a34bbdd7c7172ed87d187a2712ef23107"

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
