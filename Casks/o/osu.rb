cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.908.2"
  sha256 arm:   "f22a66ae529444cb0dcd11a7ef513ad5ec641d93dea48dd415e5645ceaa28000",
         intel: "f2ca35d37d852647d92db52923798d6692cb22fd597044c09cbaa5d9112cd564"

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
