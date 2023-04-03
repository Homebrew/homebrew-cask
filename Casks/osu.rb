cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.403.1"
  sha256 arm:   "372d5b82b3d1296ba18af56e53cfa17ceed7de1cd98e580275f7669510b80fd6",
         intel: "475c8216b823e947b8985c18cff357642ecbb83f6fc5c65747bd3ff7cc4baa63"

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
