cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.9.4.58-stable"
  sha256 arm:   "4e12ec783b2455fc007923d613a370ccc593b5825f411ffcef6c0dd6c6b7f5e6",
         intel: "8c5587d46de395cb74f44f53fc501b31786f9001a037ef6e053f4f69141eac08"

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
