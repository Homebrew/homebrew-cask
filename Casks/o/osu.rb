cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1229.1"
  sha256 arm:   "0b06a89dc1734dca72555c0dd2c568d9ffcb5a435297c464c08c66f48428ddb0",
         intel: "b2eab72a66c6faad5040ae74977f4f66977fc6d55afa8f9fd6b4ded0906a025f"

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
