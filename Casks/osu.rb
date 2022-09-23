cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.923.0"
  sha256 arm:   "caeb6bc21052d8c3c2fb851410ff6928dbd279abfb371295ef1128e69b3eab60",
         intel: "0edab3f3fa65cf53a1acf732c0af48cf9728c6953ebde551120adb9d4a4179e5"

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
