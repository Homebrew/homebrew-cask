cask "feedflow" do
  version "1.4.0"
  sha256 "edf083e23f64a2a008d114188c10ee8f07b6bca33d7639f3a21a26c17259feee"

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
