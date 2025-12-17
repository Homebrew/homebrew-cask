cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.1218.0-lazer"
  sha256 arm:   "7929e819acbb989df79dee23473f99fad904719908e7471ed0cc52ce0c9419c1",
         intel: "9ffd18d2dd4595fb690ea7eb952cdde9c0cf87b1d95c9d2d86553ad19c294cbf"

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
