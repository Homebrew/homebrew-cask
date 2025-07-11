cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.710.0-lazer"
  sha256 arm:   "dd50ffcc9a2cb2d4a502851ad3d3b713e252fc007da7919691814a8d77ada360",
         intel: "946a016c8d7306ffe444fff7f773c46694f0af3d57eb23218c1994f41c7c7fff"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?((\d+(?:\.\d+)+)(?:-\w+)?)$/i)
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
