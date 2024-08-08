cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.7.3.42-stable"
  sha256 arm:   "dcc6d5e60f25f305b989dea964f8bd626738f1b56b83f0bea14fdedd2b92454d",
         intel: "11468159e8f6112a7dea2a60c53d40dd5b9098995f19c44aee26aeaff3a2551b"

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
