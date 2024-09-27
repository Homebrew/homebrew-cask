cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.9.1.3278-stable"
  sha256 arm:   "0f2d15bc20bfd5f3171a93fd6e6ff4db0764fb55f39297abfa38adcf47fc4c13",
         intel: "387019ba207e09775ecba4da48e49317ca8901708a08bcceb60bd5684889f3da"

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
