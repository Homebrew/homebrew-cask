cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.9.3.12-stable"
  sha256 arm:   "acf66bdbb60971cb5f60048793ce1a3d5db27c166be58f96370379e5cf7fbfca",
         intel: "14d82424c292df03853c43a2cc98a26d6b6faf01dcfcd42a829e67216d586cba"

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
