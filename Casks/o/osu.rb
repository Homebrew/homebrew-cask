cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.118.3"
  sha256 arm:   "8ca6f78bb3177a226a7c585cffd516d467fc300b3b910b1e90695cde797da517",
         intel: "553ac933d520f0bfd79c72b2249f463482ff6a77bfc66d7757570272ed99cc47"

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
