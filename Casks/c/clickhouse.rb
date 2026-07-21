cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.6.2.81-stable"
  sha256 arm:   "cfb7e2765118a73b5b5c9ccdc926ea7138680705e6294ef22e90d85719ac9808",
         intel: "955b25e576b0bf7def100a45f18e3e8e41a3f776be008e63340144f2500d996a"

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

  depends_on :macos

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
