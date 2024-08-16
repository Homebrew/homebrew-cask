cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.816.0"
  sha256 arm:   "e75a7880a55a01fa652ef25d789291be4bd844c07de0bd821dde0db02e543c8c",
         intel: "9f1e5d6532914e10299157742a8118e962f005567806543c6ea6cf27c6573d6a"

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
