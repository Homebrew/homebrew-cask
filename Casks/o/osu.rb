cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.1209.0-lazer"
  sha256 arm:   "7f1113cd82a6c796c48b6f33ab1fcf087aa7cae33bbd483ee8dc1e0995a931ed",
         intel: "bfc5cbc44ee9ca91d24df8b58c6f9b9fb916a27eb6fbb48a424dc111475f4157"

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
