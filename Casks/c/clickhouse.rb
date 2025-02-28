cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.2.1.3085-stable"
  sha256 arm:   "0f4bffc53f129d4595cc562577a092772e96146731a3aebbeb3c9cf9499fbe86",
         intel: "6c69715b52f17730b4864e4c64a643d1625e5055ff19b93b9a0995503ec69dc5"

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
