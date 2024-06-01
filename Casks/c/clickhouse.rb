cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.5.1.1763-stable"
  sha256 arm:   "ade635218102474fc5d8dd2167c8fa24b52376b2e20185d56318c668ce0d27f1",
         intel: "5ba1b8357fd5396ebe976a7587a0e6578e3da796af3a5ec4c800aa2eb5718f15"

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
