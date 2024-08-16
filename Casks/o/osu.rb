cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.817.0"
  sha256 arm:   "298ed5327d2cb58b20a9f0cb570211a1797ae2309303f71c3eb5a7f89f6da1c7",
         intel: "713d37d5912e2859fde5f5ccf42105e96a7962c0b673d2c698feb15dab67fb19"

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
