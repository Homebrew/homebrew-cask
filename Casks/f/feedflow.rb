cask "feedflow" do
  version "1.10.0"
  sha256 "dfbcaa2d7623ee0b3d35793c9dc75946b65c17b3ddb754afe9cbe62266baedfa"

  url "https://github.com/prof18/feed-flow/releases/download/#{version}-all/FeedFlow-#{version}.dmg",
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
