cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.10.2.13-stable"
  sha256 arm:   "cfa99c54b3fd142c72d2a36ccc3594a30c7b65b0ba0cdc63aacd5a1d40cd2c58",
         intel: "acc6328612c54d9372f253b11146a20894b00c9bc036eb47609caa90ed63b7bd"

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
