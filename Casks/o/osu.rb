cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.221.0"
  sha256 arm:   "dc8a9c27b9011cb7160ae2660ddf953a07eeea723cf9ff738028265bd40a1f3e",
         intel: "81618bc3657b4d7fddf81901fa6fa1caa72f2107c30a9b234a1420e07ad0e34f"

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
