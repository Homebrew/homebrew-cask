cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.924.1"
  sha256 arm:   "e17a5c899f967e9e5a79e5afb356c82c3fb5a54f9bb2bac37f38edd3fac4107d",
         intel: "cd9fa8692fd5b04e06e5d6fdc58db457e49bc2a3d4842c18c32e92986b477080"

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
