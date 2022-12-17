cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.1208.0"
  sha256 arm:   "47bbf334fae1bc65846db7e05b671441b3f34580fbe18568d9521aa04e429475",
         intel: "b638e5c9e41d24aa8155da7b6334a079c7ef91bad2300d1caa8e997cd29e3337"

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
