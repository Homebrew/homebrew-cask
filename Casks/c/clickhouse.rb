cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.8.4.13-lts"
  sha256 arm:   "53b804ee81bb97c78f33e06cd9c32f13a13677f116f41f4e15e5d3adbf86d5f3",
         intel: "ff033b5a7c0b00d5d939ebeaffb69849a622dcd1c2c409171579fe2182f398ed"

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
