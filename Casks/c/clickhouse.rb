cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.3.4.11-lts"
  sha256 arm:   "c9e9a0ceee6246da0225931e36a68581de254df34840fb21776b6ef449a16d56",
         intel: "9d23603fac025154ba67142ee067535bab911f2cf0ee2abfa1bbd0645df5dd0e"

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
