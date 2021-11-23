cask "playcover" do
  version "0.9.1"
  sha256 "1ffafc3f464749af737cabec50847d4ff8a584dcaf8f7831914817760dd55719"

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
