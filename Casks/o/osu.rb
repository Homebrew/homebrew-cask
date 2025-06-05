cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.605.3"
  sha256 arm:   "65387add79b4530d873f63e7994e933bf1c686dc67064668bee35f531ce1145e",
         intel: "07a709cca6d1fb02fd50a754107ddffa98712c1133ac5112d1e418ca5927046a"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
