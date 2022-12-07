cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.1207.0"
  sha256 arm:   "c7edcbfa70d275b12a43094d73341f705bc78f49e2622670e2e08d829a2a66da",
         intel: "0c0d1c481468af444be5d0e193bfe4fb8fe4ad9581d226b8e3a4a0223b51ec78"

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
