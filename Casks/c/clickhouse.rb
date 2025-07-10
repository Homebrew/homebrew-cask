cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.6.3.116-stable"
  sha256 arm:   "31a48beac1c192e65024487d5626fddedd0f24b93cebb13725ad5a8a5749307d",
         intel: "663b72c7b129cb7c2a1d7bead13e8173f6de099556530f2460f70e94638075c8"

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
