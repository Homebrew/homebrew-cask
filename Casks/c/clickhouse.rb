cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.9.2.1-stable"
  sha256 arm:   "98b60fe080b44ee3dd1667d4ab4bc786e0215113123b4df915fc9e2e7d79ec5c",
         intel: "498d5c84d142327847dd9339d46eede648dffcc05a019cfb9f2cd7f0f6941eef"

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
