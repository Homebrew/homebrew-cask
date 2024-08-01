cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.7.2.13-stable"
  sha256 arm:   "679bd6d5b062ec61bdee6fc36851b316712c6b364c738d78e267ae95fe92f37c",
         intel: "d268a8bc5a6e26a234ef7457346375884630ade7f43c34e7bc796ce71f0eace1"

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
