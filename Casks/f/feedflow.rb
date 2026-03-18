cask "feedflow" do
  version "1.11.1,windows"
  sha256 "8e98011bc4fa380cdac984174b6b75cb4117723dc36d7632d4c77dbb33789ef1"

  url "https://github.com/prof18/feed-flow/releases/download/#{version.csv.first}-#{version.csv.second}/FeedFlow-#{version.csv.first}.dmg",
      verified: "github.com/prof18/feed-flow/"
  name "FeedFlow"
  desc "RSS reader"
  homepage "https://www.feedflow.dev/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)(?:[._-](.+))?/[^/]+\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.filter_map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next unless match

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "FeedFlow.app"

  zap trash: [
    "~/Library/Application Support/FeedFlow",
    "~/Library/Saved Application State/com.prof18.feedflow.savedState",
  ]
end
