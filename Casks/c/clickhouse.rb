cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.3.8.4-lts"
  sha256 arm:   "6d1c334797024d37f2718ddc0c2fd9297791a54b9a05a124396c5d6ce2ee5a76",
         intel: "2c4fb7b5288c35d5f73e2a1693f963806ede775534a308dd09789a29a159c375"

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
