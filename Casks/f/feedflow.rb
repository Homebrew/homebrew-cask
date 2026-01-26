cask "feedflow" do
  version "1.9.0"
  sha256 "163cca3b57cc974844e16790c53965a69002b19e2c6edfd073d0a0f41ac60ba2"

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
