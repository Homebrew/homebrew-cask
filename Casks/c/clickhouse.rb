cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.5.2.39-stable"
  sha256 arm:   "51d898364550130d5ea248637ff8b0ad567cdf1626a768031f8338cc006a5542",
         intel: "c8e24c5b5ddffc9d6e0f836035f4a25ae272ebbc13f950cd8431611543e55349"

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
