cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1220.0"
  sha256 arm:   "f0b8a8ec4e4a2d3b2487e90b5a03999a981228912769c0d40a97d4a0ec73db4a",
         intel: "30b15728f4fe0122f5acf5db8e8f182493797606fa260cc92b52918ed50bace5"

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
