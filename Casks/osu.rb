cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.326.0"
  sha256 arm:   "dd1d9974cba9f70d98106bba003b85d2937fed4bcd2f8a3338145cb5735ec0aa",
         intel: "bae5af974a72087755e5bb00233eb18f4f446c187491d7a9a615f467569ba354"

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
