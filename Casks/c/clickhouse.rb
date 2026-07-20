cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.6.1.1193-stable"
  sha256 arm:   "df44acb8f1f52b8cfa9fd41bd18e07e03982c4f7f5868fca1043ce39b2e8d7ce",
         intel: "fdc5415ba5d58ef3198573d9b7b59245410ee8441c8e18a99e2431e94b979bcb"

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
