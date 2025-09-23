cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.8.5.17-lts"
  sha256 arm:   "702b6266c6ae9d360baf27eeea2271779ff085dd3a2a62179a785c2f6b7ab77f",
         intel: "17a3a1de2f231769ae44f50d1e616c73ee68c1660a398b0effa7a15f6cb28f62"

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
