cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.812.0"
  sha256 arm:   "ec1b666e6a9c1fa9a547c23a7cb11f6f2bff575ff1e551b047a19c38f5476f7d",
         intel: "a96686b730a1b49825b383edf7f52c94bc105e6a5a2f0af4d1c9f963088e6f6c"

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
