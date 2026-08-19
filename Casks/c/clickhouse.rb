cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.7.4.58-stable"
  sha256 arm:   "538920cc45df1f427c7d5974859b087000687753a57fa66b9a91fa898d39db48",
         intel: "3a04bd8b794831f9f0bd25564e64cb343d8b19245d585a1ce7dc791f1508b51d"

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

  depends_on :macos

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
