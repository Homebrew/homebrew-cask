cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.908.1"
  sha256 arm:   "2d68f6d9b57e0c2a3797295522f83d429efe97aaaf27ef76c2e159977b605ef9",
         intel: "549bd2b44ccbf76fe308da895a059bcd5b46a4c4d5ba41a613f2ce75b4135916"

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
