cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.1029.1-lazer"
  sha256 arm:   "9f6a4c9f415678aef2acc29cdd513da45c69a8fa8190cbc7d0e40bf030918d68",
         intel: "08d96737834dd3d303e8092a1cb397efb0452069cf2f9a53aeb16213c1044446"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?((\d+(?:\.\d+)+)(?:-\w+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "osu@tachyon"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
