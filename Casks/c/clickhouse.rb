cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.11.1.2557-stable"
  sha256 arm:   "d820d0afd47e1f6f2090981b473a9315d8f39a1711693ff2d2288ffcb8e65778",
         intel: "56cdb1c0ed5556345349d279205ecb14d736474cde4ea5f5cdcc9de557abb619"

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
