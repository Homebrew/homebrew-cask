cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.119.0-lazer"
  sha256 arm:   "98c5d5843e9984f95aabbe260a3b082799653351d0ee43600792ee3cf6b7e99d",
         intel: "37a9ae7ef2187eb15a0da125aa9b0103a147112cbc3d8e4cf9cfc2e6fa5be212"

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
