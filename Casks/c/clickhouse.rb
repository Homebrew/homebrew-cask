cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.2.3.2-stable"
  sha256 arm:   "968625b7ae507ec823d620b9adf685f71eb6246212c5914251165a694888280c",
         intel: "11bd248d43e7355ed00f6c17c1a9df75668033ee8e57b0be44d8a2236902ff93"

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
