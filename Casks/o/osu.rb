cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1130.0"
  sha256 arm:   "c517760cd9a1f910140dd953cb4a3c84665d388f9f84bfb852e9c627a0748cba",
         intel: "f598afcdce331d816c2cb4b1debf6ef102b4e45977fae1da97a031a2c3f58786"

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
