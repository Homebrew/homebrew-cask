cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.605.0"
  sha256 arm:   "13388b187a8d4049ce1bcfe343119ccb04816d3f839fc2e8b50ce031406b5fe6",
         intel: "519a5780c2b821fbc5639347d77c6fe223ff00de1ce799a406ef79e933e92fe5"

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
