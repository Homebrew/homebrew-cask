cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.310.0"
  sha256 arm:   "fb6de7bc34b1da7484cd3bff6f81818e320dee2ae309fdd6369a75ff4a0bc38c",
         intel: "4d91b760ed14b3f688de9e78ff16c3ae12d07bd03332ee8516db618ad6386009"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
