cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.5.4.38-stable"
  sha256 arm:   "4e10ac2f661d767c88b724e66937a2f1ba95af1766a7e239521048fbcae44260",
         intel: "6a145a6bd4a9d1a2d3513fdacf59f2835b960afd86cad2dab7ac7b068383bccf"

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
