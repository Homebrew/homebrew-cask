cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1223.0"
  sha256 arm:   "5395c6c2f5b2ee415a90689700374992b402494dffdcbd2d15bbec4c7133913f",
         intel: "1985139f065faa99038798ff46fd982fc63e6025d383201dde4b297a06283c5c"

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
