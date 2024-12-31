cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.101.0"
  sha256 arm:   "aec8f39706ab8d35c62412e1ce87e04f44cfe188f402e575684f8ef35122aa91",
         intel: "a6b75d96e0c33046ad5c0bc86b576490b8a6b452c92bec14e19dd8cd3e65c861"

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
