cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.8.7.3-lts"
  sha256 arm:   "03dd63e036daf568424f08e011f813f753ae178c2392194f5babb812274ecaa6",
         intel: "ba2c4da790c8a696a6bf04c5fab034b462c8aed99bbc9559c5af9f9db486a962"

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
