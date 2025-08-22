cask "osu@tachyon" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.815.0-tachyon"
  sha256 arm:   "85342a662f89970e41ddca996943e5103708bab27d3978e5270d385c3b289dcf",
         intel: "cbe4cb64bb255d8f5203cb9e6075028f8668cc710ad7016ffab80d444866242d"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu! (tachyon)"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?((\d+(?:\.\d+)+)(?:-tachyon)?)$/i)
  end

  auto_updates true
  conflicts_with cask: "osu"
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
