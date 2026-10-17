cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.21.9-stable"
  sha256 arm:   "6dbb936db9ce9e22c1785b8346f6fa314fe07f8c4cd881ce7b3bba1c68a711db",
         intel: "a51c6a64b9fb519d533a008a343e698cbeaf7fedb6ab93ca2cff1a31fe4df86f"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}.zip"
  name "ClickHouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  depends_on :macos

  binary "clickhouse"

  # No zap stanza required
end
