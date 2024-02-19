cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2024.219.0"
  sha256 arm:   "3a17b1048ef0e48e480b9d3c63a95a67fdfbe4a1ef16995d9732acf59abb9a97",
         intel: "e4efb1bcec96c23b759e4e49eaf0a5491cb973a118cc5d5ee7a28e87a6866014"

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
