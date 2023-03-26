cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.326.1"
  sha256 arm:   "2a0db962492fca2370d7292403caf55b49736aa8e02365eaa1443766882146aa",
         intel: "273083505853f54aa6e9e2e8aad5cc55682d6ec796f21215d1f307505b51ca31"

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
