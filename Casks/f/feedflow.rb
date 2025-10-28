cask "feedflow" do
  version "1.7.0"
  sha256 "e862035dfd06a8eb4275486874760943f1d98122f61159fadaa8ed2a20985a24"

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
