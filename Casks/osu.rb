cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.1101.0"
  sha256 arm:   "186be9d324fed096317c927a2f1a1429ac6f0957fc0ed30567a9ef9eff1e36cc",
         intel: "dc9b363409594fd54b32700f090248fa2a00b0ac03904c6b4da4a6538017af02"

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
