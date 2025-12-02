cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.11.2.24-stable"
  sha256 arm:   "1a6e8bfc16c8af9e1ff0b7095056419a8fc8257f520e2878dd75357f50e8dc3d",
         intel: "4877e3ce9cbeb9d81f3ba8124fad90e5f45e923edc26b272af042b3d995535a0"

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
