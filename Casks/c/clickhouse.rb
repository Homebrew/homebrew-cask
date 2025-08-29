cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.8.1.5101-lts"
  sha256 arm:   "5d490a7e3c9d62e906c7d54968c892f121f7283e1440845c506f5785d5543f5f",
         intel: "ad082d478a10177031123b79d6b39cb4b24b88cbfed98d0a26fb69b6591150b8"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
