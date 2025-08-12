cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.7.3.13-stable"
  sha256 arm:   "6b7bd35baa49cd1894f412ddfe166f946b2c1f216b16c2e8c086ee95c4cdcf68",
         intel: "decf1ed5a33a42b2b3578f7218c6d4ac62279938a1077e9730433bbe6d6b0f2a"

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
