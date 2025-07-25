cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.6.5.41-stable"
  sha256 arm:   "b9cfdf877e6d31a74bf7974ac152544a41b7377c2946c55acbbdf4408015eb92",
         intel: "31032723938597922ef2df4e9530d8257d61135ca345b582a19d1c147d1618b1"

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
