cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.716.0"
  sha256 arm:   "9b27813e09c7142ded7d513dd630b602cd998b9a81708da4656b9072a5a573de",
         intel: "95c50bb43392f6aae2115813d7d12c3ff096c5c448c34fd400d2d2188032822c"

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
