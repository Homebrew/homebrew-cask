cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.1123.0"
  sha256 arm:   "ba09f5e12e1d112b1780f4d61eccc531ecaf62c05393a6797dc6fa6e2f8ad861",
         intel: "798e4c7e03c671fdd70e4620549650e26c13e99061d36d2899e2812b532be10b"

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
