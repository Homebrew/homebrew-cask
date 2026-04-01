cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.401.0-lazer"
  sha256 arm:   "501c97278ec1e2c44e8fa0d0df1ff656586f15dce715b38a3496b1eb598ab48e",
         intel: "5df90d04818743bdf430830759540fa66fba6fe5b87e53480434436a8fb57404"

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

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
