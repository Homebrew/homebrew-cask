cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.5.1.882-stable"
  sha256 arm:   "27b8c079f1113001d5277cb83da8ffcd0ca2db54a74ee51044c22bf1403935a7",
         intel: "3b9b9741d679fba92e373d1ade2d9263cbe2c3f70df46b71123423ed6b0f12ef"

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
