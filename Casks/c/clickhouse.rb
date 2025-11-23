cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.10.2.65-stable"
  sha256 arm:   "d4e44a2d4c256a7b29e2d87ff620526b83fe73d0d9ff01a67c23a90251e2ffdb",
         intel: "6c0865831e66a73159b1a53bd3510a85fccc2bb1de18d667b037820d56091f54"

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
