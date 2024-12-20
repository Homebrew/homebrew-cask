cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.12.1.1614-stable"
  sha256 arm:   "e125c7bd46ebdc664882b264441261843449a9bf10d301c8f1741610c3b60320",
         intel: "dd042987dbea20b0211dea97b16cfc13f8787635d3dfe526f30b010c83cbc66b"

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
