cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.220.0"
  sha256 arm:   "c3bde9689579cfe07f91a6e118dc68d9925b6a4ea3eaf4847488cc011a101398",
         intel: "e1eeaf3ded9a810eac57d6ce0a88a472bda910ff6af093b4b982dd7a3a662de1"

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
