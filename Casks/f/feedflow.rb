cask "feedflow" do
  version "1.1.9"
  sha256 "4840d315fad8dbfc13c86f023e3416ae7a99bc6f00a354ec76714d690aaee88a"

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
