cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.102.0-lazer"
  sha256 arm:   "d3e856f9ce6bc6090cd7f788a877918dd58ca08b458529fca2fbdc5dddafa580",
         intel: "549100b3e48a96df99672d266111d504f739f226f14f5c9e7bc58958088621a2"

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
