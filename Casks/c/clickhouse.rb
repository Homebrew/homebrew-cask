cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.9.5.21-stable"
  sha256 arm:   "1170bde7fd39a2ac1ddb1b1c9da425a20708870a997605e8025412f8edf71dc8",
         intel: "367d873f3a30719aaf38979ba2ed7fd86ace668e47fddb9f7a86a7206021b828"

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
