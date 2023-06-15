cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.614.1"
  sha256 arm:   "3fe10c0c3029bb3598f7d968d810caa6a66d3965ab6416330dd5b6d4e59eb229",
         intel: "cfc2ee5e0676a1b6fc8b6eec1698e450e3f861ecabd4f82d08b9da90e48293f9"

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
