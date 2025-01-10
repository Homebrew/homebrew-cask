cask "feedflow" do
  version "1.0.86"
  sha256 "b0f9be56a6ee39f895178824ea654475860355be865fe33da1ef018f5785e026"

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
