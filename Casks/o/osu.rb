cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.429.0-lazer"
  sha256 arm:   "1a4c9ff774b3673eab1750c1480d931d562d52ac0ceb8a801d0ec6d0eb21be91",
         intel: "37e06772b2d6adc195c406179b310a21dbc32cc84df52332c74ac44aec71f0df"

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
