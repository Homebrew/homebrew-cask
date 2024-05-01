cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.4.1.2088-stable"
  sha256 arm:   "df52242a6730612673fec254e30bc1cc7fe34c356bf06b52bc0dba3cf006aba0",
         intel: "ebbdda46725aaa81c2d79afcf0be3d67c53a28d1ad355117208b20b295044de3"

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
