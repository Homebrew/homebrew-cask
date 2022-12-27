cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.1227.0"
  sha256 arm:   "bd735e8e3e59a9a4010104a97a6e2e54921fdf343f45b194b0181fe940cc483c",
         intel: "9ecdacd66f4f75333f21bad3c0c9f3b790abaef395aee35e9a50d8ed1e53f1c4"

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
