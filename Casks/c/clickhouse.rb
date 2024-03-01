cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.2.1.2248-stable"
  sha256 arm:   "dbc9e17b4f0a6485b37e989632fa1151f43e9be02af79d13d508bf69337d95b5",
         intel: "62e29936c26d482e3c5a43923bc923b875179cdef587f9b2e393eb0e64e989db"

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
