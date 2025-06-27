cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.6.2.5-stable"
  sha256 arm:   "05d20d505a5af390d25ed459f60f1833802a34225e985128435e4570b680951f",
         intel: "c6a79703a8b5d358b2c028175f6f5f918c14b8365af13162b6cf1968bc6c0e2f"

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
