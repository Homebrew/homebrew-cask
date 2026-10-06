cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.12.8-stable"
  sha256 arm:   "f57c2e5f751e8b0d26b11dc7ca764843c4c69e068ded74675db14da7d603be17",
         intel: "c6da02db5f9b59e6b3861d811a7e050ad3f0ec1b54bbf0ad45bb3be18b3f75ed"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}.zip"
  name "ClickHouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  depends_on :macos

  binary "clickhouse"

  # No zap stanza required
end
