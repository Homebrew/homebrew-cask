cask "playcover" do
  version "0.9.2"
  sha256 "cbcc51a37079219d171ac7eb41eb51c7469192628db5db2359670ee25831d87a"

  url "https://github.com/iVoider/PlayCover/releases/download/#{version}/PlayCover.#{version}.zip",
      verified: "github.com/iVoider/PlayCover/"
  name "PlayCover"
  desc "Sideload iOS apps and games"
  homepage "https://www.playcover.me/"

  depends_on arch: :arm64

  app "PlayCover #{version}/PlayCover.app"

  zap trash: [
    "~/Library/Application Support/me.playcover.PlayCover",
    "~/Library/Caches/me.playcover.PlayCover",
    "~/Library/Containers/me.playcover.PlayCover",
    "~/Library/Preferences/me.playcover.PlayCover.plist",
    "~/Library/Saved Application State/me.playcover.PlayCover.savedState",
  ]
end
