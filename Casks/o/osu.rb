cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.607.0"
  sha256 arm:   "62b9502d65219f4958a7ecfdf2069c6514db0e7c4d1d3800ce069ef7e5d28ad9",
         intel: "6697e89fbcc7b997adbdc51ca1e0b056337a8f621ae25ea21910a31dec830fa7"

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
