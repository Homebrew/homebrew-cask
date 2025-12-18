cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.12.1.649-stable"
  sha256 arm:   "b4879f63fc93722b71c20d2b612dc1526df15bdf6abec0b5bf20410a0e5de157",
         intel: "e0c2a0e6ac36eab03620eb53083058ac88af23b7384d85592c417857339ae8bd"

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
