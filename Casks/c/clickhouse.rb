cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.7.4.11-stable"
  sha256 arm:   "469b36548085344f32212a137d7d8a5130e5efc485b39903d1848ffc43e9729e",
         intel: "8ed302990d9a6717b0a91be42904936d5310e71d981a6c029f63716199550db3"

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
