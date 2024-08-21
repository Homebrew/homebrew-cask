cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.8.1.2684-lts"
  sha256 arm:   "f6a5db5229e7886e6e80ba763deeb69c3f4b5aa2784b79982f05b85e8df647b4",
         intel: "631abbc8107e318c2c03313fc144441a58e4f85bfb1e1243fa9aa993e59c2d22"

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
