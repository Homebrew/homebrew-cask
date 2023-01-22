cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.123.0"
  sha256 arm:   "9678c95544d338e010a54b182d113a727c40ab11e6bc56d05f023c67de1908ae",
         intel: "e0dea3a2af047500699b20ae6c52cc5bd9a6ffc05b0b474e77fbc6fac2c8a344"

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
