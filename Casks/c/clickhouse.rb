cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.10.5.20-stable"
  sha256 arm:   "90dfcdbb4ae5b52e4c6e6a591d352da9415fbd31559ce05c47738fb5408594d9",
         intel: "9cd16ea7658fb6cf64f8a82653c7c8175452c0c1bf088c6b6bd3e255f348a4ed"

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
