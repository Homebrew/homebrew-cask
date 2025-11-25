cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.10.3.100-stable"
  sha256 arm:   "5ad77b1ea00c5c3075ca757bc14e29abb59044a737738180d1bb2f8f5d1c031f",
         intel: "1ff2f25215bb8e245411cd613e43fd952351d599224b3eb6c7412f3a2c8e6e03"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
