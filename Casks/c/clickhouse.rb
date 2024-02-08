cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.1.1.2048-stable"
  sha256 arm:   "f7a47fcc1f66c5b228299d653dab3319b624fbb14417276d5b34f21e839ae4f9",
         intel: "d9ff006c29fe60ee184b0eda36516d6c8f1a71f6c5a15fbd3345b50f691e5301"

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
