cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1231.0"
  sha256 arm:   "f75a4831b6cbeb1570f942ee408c25f710a05555397e023f6e5cc8870131bda0",
         intel: "5c3a9c818201c30384a887ff88d1234625148d78355e6e2157e1e16ea59877ad"

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
