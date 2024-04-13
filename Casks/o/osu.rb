cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.412.0"
  sha256 arm:   "ef608e29b86d2ac3e0b3b71984b4a65edde8b35b61c70c80077ecdc9eeb8c037",
         intel: "21afcc078a8a999915a3081ed1d9ecafad2dd6b0302e377e371c66944dbf806a"

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
