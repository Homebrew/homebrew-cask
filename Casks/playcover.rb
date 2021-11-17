cask "playcover" do
  version "0.8.9"
  sha256 "0a330ffedd068ea84385d5f97a08646d93637f4e0708c6a3cea7bd9f27af658a"

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
