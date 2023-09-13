cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.913.0"
  sha256 arm:   "5a452a9fd183e10d7440144333927017b2b1e01c7aa790795ae94fa8f6b3569e",
         intel: "3f03fcde1765293641b64843d95154cdbbe39c5afb8d19ce8f5f00aeab908629"

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
