cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.1008.2"
  sha256 arm:   "72e9975d9360959e557029c6a338d57ce7da03a44fe76810daeff81304a6b489",
         intel: "7221f359b8ea50dcc45aa9305076e79baae2cf606cddcfb25bf3405fa1b9d508"

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
