cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.420.0"
  sha256 arm:   "768b132c8593d2dd1144fbc6f04bf4580152a96b37a1c7d24a53ebb52f89b72b",
         intel: "9fd768d527b6c15756dcbe78322ea3ae685dc9e10bb07be9a90794337ddb8a9e"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
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
