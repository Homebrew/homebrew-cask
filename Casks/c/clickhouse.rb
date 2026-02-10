cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.1.2.11-stable"
  sha256 arm:   "6fbd4182ea063b007f003b00b47b8b75cfe4983db8c32f34087202e79d40f37e",
         intel: "5872e20cbec9420a8f3cadbdd67df4500f124dd158a04289ae8f436721a13cfd"

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
