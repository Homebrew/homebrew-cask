cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1224.0"
  sha256 arm:   "f0ef42c8e1264eb498df474e3db58ce0db1f8db196a2c0ba3ee590e780ceaa0a",
         intel: "e9dbca602674ad58802c11c703cd3dd0b351c9fd913860f034ce42bc5558834b"

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
