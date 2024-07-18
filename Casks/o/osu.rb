cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.718.0"
  sha256 arm:   "efa82de0cd689d7877f80f8cbb8381ad80ef7cee225d0d7d6ea6aa780bdb8745",
         intel: "d0aa627c1234061b4ef5c3b05864e85259429b9645113d094fcffda464708b76"

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
