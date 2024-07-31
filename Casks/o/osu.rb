cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.731.0"
  sha256 arm:   "19c28a10be2c188d4a95f14e9b4bb88ca8b1eb51f6acd8adae6de1b9e8cc8f8c",
         intel: "962efc8b94d434868890a214524365a84c24f7659b82c7c1028d1fd5142e7c13"

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
