cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.5.2.34-stable"
  sha256 arm:   "cfef8b47764f101889fd547388bb50623e39f65d75c4feb266a7cf66fb593bbf",
         intel: "d24c7e3f62ab11223744803c4fc14850b06cc13bc4499ceafaca924cb4e29a9c"

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
