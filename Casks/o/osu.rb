cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.605.1"
  sha256 arm:   "7d4febc3217741dda5a3ce9b1b4e571f44eff7d64f86ec101e332da9b46298a8",
         intel: "5978a9ff1ca891083300c7daa95f141b3eb6b2986e108e00d3d3ff0b566cc343"

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
