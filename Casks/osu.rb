cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.901.0"
  sha256 arm:   "a356da040add25291f88d38444643f2b84c415331a848c29c0d72005909a556b",
         intel: "33bd765bfef61f5bbe78bdf1b9578d096b90bb4d55b14f0ffcd0b3651dd6f0d1"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
