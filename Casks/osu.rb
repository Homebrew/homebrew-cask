cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.511.0"
  sha256 arm:   "8de0789bb796a44606a1ff6e3b3138ae70abe6dacbf458245f535e9c4afc160c",
         intel: "3123b003b772d28cbfe936466f8236b305228d335cb591f9c603f526cf0f9e51"

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
