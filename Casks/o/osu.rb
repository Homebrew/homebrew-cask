cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.425.0-lazer"
  sha256 arm:   "8997a5d0b5bf6b88909904a33cfc5f043dd7246abb469c56b05735b2bc2d20f1",
         intel: "ef097e1152fc02b0e936bc41ad940232f92112e8384424ced5d8316d65f1600c"

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
