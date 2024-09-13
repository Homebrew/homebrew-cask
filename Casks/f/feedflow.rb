cask "feedflow" do
  version "1.0.77"
  sha256 :no_check

  url "https://github.com/prof18/feed-flow/releases/download/#{version}-desktop/FeedFlow-#{version}.dmg",
      verified: "github.com/prof18/feed-flow/"
  name "FeedFlow"
  desc "Minimalistic RSS Reader"
  homepage "https://www.feedflow.dev/"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)[._-]desktop$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "FeedFlow.app"

  zap trash: "~/Library/Application Support/FeedFlow"
end
