cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.118.2"
  sha256 arm:   "a07e6a704140e426214ff0077ccd8455bf6b8bd529f28528928983a2875db875",
         intel: "64925918d60f22634cb81d613ba6334a8de8e7d1d0002cf33ce4545a3e23f6ae"

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
