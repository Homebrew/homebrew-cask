cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.423.0-lazer"
  sha256 arm:   "89cd3dfe2d4e493ceca2e962d52e78cfbfedb282a73f7af35ac889e763ee5ad3",
         intel: "4ec974a0da5dc6742518e8f5c9089caa6612e64230d8412e7d49983d72d2dc23"

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
  conflicts_with cask: "osu@tachyon"
  depends_on :macos

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
