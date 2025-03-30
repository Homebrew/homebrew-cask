cask "feedflow" do
  version "1.1.3"
  sha256 "d974a3a290eceabdff91fa30856e01986062fc99da0aa73c8f624f6a9c067c81"

  url "https://github.com/prof18/feed-flow/releases/download/#{version}-desktop/FeedFlow-#{version}.dmg",
      verified: "github.com/prof18/feed-flow/"
  name "FeedFlow"
  desc "RSS reader"
  homepage "https://www.feedflow.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "FeedFlow.app"

  zap trash: [
    "~/Library/Application Support/FeedFlow",
    "~/Library/Saved Application State/com.prof18.feedflow.savedState",
  ]
end
