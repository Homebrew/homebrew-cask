cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.11.3.54-stable"
  sha256 arm:   "7c8a12c9b902e27fcae709f737f3cc8924a2ecd4689e746844ef6f1deabe391d",
         intel: "b3bb7f0c0dcf3c13f4d56b84375f8602967433bc68151f1c2dfe44c2f6971c82"

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
