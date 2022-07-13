cask "playcover" do
  name "PlayCover"
  desc "Sideload iOS apps and games"
  homepage "https://github.com/PlayCover/PlayCover"

  version "1.0.6"
  sha256 "c34399f5786096e30d0998939cdb0dbf1edb9bf57fbe842d2d5d1f51427cce9a"
  url "https://github.com/PlayCover/PlayCover/releases/download/#{version}/PlayCover_#{version}.dmg",
      verified: "github.com/PlayCover/PlayCover/"

  depends_on arch: :arm64
  depends_on macos: :monterey
  depends_on formula: "ldid"

  app "PlayCover.app"

  zap trash: [
    "~/Library/Application Support/io.playcover.PlayCover",
    "~/Library/Caches/io.playcover.PlayCover",
    "~/Library/Containers/io.playcover.PlayCover",
    "~/Library/Preferences/io.playcover.PlayCover.plist",
    "~/Library/Saved Application State/io.playcover.PlayCover.savedState",
  ]
end
