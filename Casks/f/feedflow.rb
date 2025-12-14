cask "feedflow" do
  version "1.8.0"
  sha256 "4ccf4e30c91ca9c0769e61ec3fb273d17c1ee19b43b75e539a629653008eb2e0"

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
