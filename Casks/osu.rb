cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.121.0"
  sha256 arm:   "00f94d7d8d85bc0edbae6747e5a8c76d15a47b1eac37d15d2ae1327c5ef64f3b",
         intel: "81b55e8812f125119e83099838a397da98c826c1e433e1a191143a4527439567"

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
