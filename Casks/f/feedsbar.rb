cask "feedsbar" do
  version "1.2.20"
  sha256 "d18c8e531d930c0d84d299aaf0c54b2ba5913aaa9e8467c7b8c52320edf460c9"

  url "https://feeds.bar/releases/FeedsBar-#{version}.dmg"
  name "FeedsBar"
  desc "Scrolling news ticker for the edge of the screen"
  homepage "https://feeds.bar/"

  livecheck do
    url "https://feedsbar-edge-api.netlify.app/.netlify/functions/v1_releases"
    strategy :json do |json|
      json["releases"]&.map { |item| item["version"] }
    end
  end

  depends_on macos: :sonoma

  app "FeedsBar.app"

  zap trash: [
    "~/Library/Application Scripts/com.graemechard.FeedsBar",
    "~/Library/Containers/com.graemechard.FeedsBar",
  ]
end
