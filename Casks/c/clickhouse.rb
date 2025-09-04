cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.8.2.29-lts"
  sha256 arm:   "0e5821a0b32e5745367c3bc87b8d7aa797e65f38defc1343345da35197dea932",
         intel: "131065fdb6d5e78f9af086c9d051bad94452c4a9feedbf6be2aeed7973f03f1d"

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
