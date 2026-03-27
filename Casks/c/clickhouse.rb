cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.3.2.3-lts"
  sha256 arm:   "889072b3d9cf4cb7f09e8a7897c924b71fd6ee2fca8a60bc44b48f9768e01b85",
         intel: "30f1db865cbc1aa2c965116a20e7528aadfc4f264a9e086fbf6ed37a07c41729"

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
