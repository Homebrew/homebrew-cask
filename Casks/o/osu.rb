cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.418.1"
  sha256 arm:   "6f163616459f6f5dc11e6784d30ce5ac44ee29d31d6dcb231b6498eebf82971c",
         intel: "456fb208c08c111f3d43ec2fc56d725d98ab7f0ed7e61064087a0ece76619b05"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
