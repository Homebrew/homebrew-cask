cask "osu@tachyon" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.822.0-tachyon"
  sha256 arm:   "b9ca31276cd1fc520d7c04af397180c6fc86d66ebd407851f908352566655d82",
         intel: "be8693a0f9d4fd50e9229691b19cfa08c6de7e4f38bbd6be128addbce7b9ca89"

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
