cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.4.1.2934-stable"
  sha256 arm:   "9eb99d061b6f1d995034c84349c49c2829f0d3a7968e2e529d3412f5c2cda9c0",
         intel: "0729dc80cbe1c4f0fea302afdbd182214166774bf23baeb5a896c7fd2397cc19"

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
