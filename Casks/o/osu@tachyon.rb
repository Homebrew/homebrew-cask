cask "osu@tachyon" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.827.0-tachyon"
  sha256 arm:   "e33c6d281711e083d9d93db68fbc30713ce914bfc091d389a8bed5165c2996fc",
         intel: "5643bb9b08b06bc42500f0620ed4383832879bbf0fdf771d51c1b4b7e9a90b48"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu! (tachyon)"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?((\d+(?:\.\d+)+)(?:-tachyon)?)$/i)
  end

  auto_updates true
  conflicts_with cask: "osu"
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
