cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1221.0"
  sha256 arm:   "2889594b10108b17df0f121ca1b237a0a9071461a3cc7988fe80fd88eed13a18",
         intel: "df761d981f3a50f59c391a5419959d6a43a935aed774f80d74c33b28ea0f1fa5"

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
