cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.1.3.23-stable"
  sha256 arm:   "29c45b20f3a1b9a41cfbbb58361b3c85acd8e1b0ca8f2759442fa9e350bf12e1",
         intel: "bcd9c3cf2475da8e2761b167fb409affef686e289005d4d8e08b1d81c2d6c2c7"

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
