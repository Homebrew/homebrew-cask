cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.804.2-lazer"
  sha256 arm:   "276919ec24cc75e0ab411cdb26436e683ce51d07b89916fae1d35079ce699a63",
         intel: "bd1f6411ad67a6b6449ee474558df39815f8849bb9e4574514818a23762557e6"

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
  depends_on :macos

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
