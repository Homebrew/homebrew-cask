cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.12.3.47-stable"
  sha256 arm:   "686612fbdf5d4a388bb37eb29150e3748fbbe4b1a128d7c97a9890fb94d085c8",
         intel: "32947c6ec81667466ba4320b971f6ee387fcc4137a8b21ef8396a97e7fdbd043"

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
