cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.7.2.54-stable"
  sha256 arm:   "b9a3534a68e0b7733507f49fd64e967ec07b109d8488ea456a731700e6c40fd7",
         intel: "2cc16be1c00b64b369fa0ab47edabbcc4334a204fd3e31acf7e898f3ffd9e084"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  disable! date: "2026-09-01", because: :unsigned

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
