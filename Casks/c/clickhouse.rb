cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.12.2.29-stable"
  sha256 arm:   "c9a92f825b953c0688cfc5879cadd002a99430099db830b908e069c8bade95ef",
         intel: "e7055e72f5e877fa54d5dc5de7a6f563307e58f53f0184c4caff4e5178429109"

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
