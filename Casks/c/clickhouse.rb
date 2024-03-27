cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.3.1.2672-lts"
  sha256 arm:   "8c232c2ea479b88d838329e6aeba993b7974ed8acf67fa826da5a67bd40ddd37",
         intel: "18bf141042a030a3472850f02f1c843d7a464650a75a6a695bccdb97e9c57164"

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
