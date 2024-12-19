cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.11.2.101-stable"
  sha256 arm:   "6ea8b4ab9933ce2e553d89bedc961cca1d12b8d21312661653814180c6d8b3aa",
         intel: "c0b17234ddb291cf52c755afe7437f82283ad5879dafa501fa6d70ac361716fc"

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
