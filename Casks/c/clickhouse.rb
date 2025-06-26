cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.6.1.3206-stable"
  sha256 arm:   "d2a079d0be7675bb93ac7c8b67aecf7c98c039f35c71cd5ff06a7d35d7ffb82b",
         intel: "fd0365a87aee866be407ae6e71f81b7f3a790d29cc6a4ce3e8a6e50b19777a4b"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
