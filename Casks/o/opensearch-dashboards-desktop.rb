cask "opensearch-dashboards-desktop" do
  arch arm: "-arm64"

  version "0.1.0,0.1.1"
  sha256 arm:   "03bb6b2978614dc56a9794d9a56d8bd6f549770d76b5ae2050b78603b89ecbdf",
         intel: "cd335b5697f8a91d4d29874c6be9be530be0f4817e92c533c5b6264c4ce92df6"

  url "https://github.com/opensearch-project/dashboards-desktop/releases/download/v#{version.csv.second}/OpenSearch.Dashboards.Desktop-#{version.csv.first}#{arch}.dmg"
  name "OpenSearch Dashboards Desktop"
  desc "Desktop client for OpenSearch with GUI and TUI administration"
  homepage "https://github.com/opensearch-project/dashboards-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenSearch Dashboards Desktop.app"

  zap trash: [
    "~/Library/Application Support/OpenSearch Dashboards Desktop",
    "~/Library/Logs/OpenSearch Dashboards Desktop",
    "~/Library/Preferences/com.opensearch.dashboards-desktop.plist",
    "~/Library/Saved Application State/com.opensearch.dashboards-desktop.savedState",
  ]
end
