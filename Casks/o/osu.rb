cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.924.0"
  sha256 arm:   "295b3ce04e69c1d4917543ec33d2e8436de7a10fae0e00e302c4d651a9e016ef",
         intel: "479e7c3f8d72a14f55fda5735b5bbeaab0bd6996cff26b3c0f7f0277f8b4b60f"

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
