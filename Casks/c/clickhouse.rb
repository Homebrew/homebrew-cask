cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.7.5.34-stable"
  sha256 arm:   "1d30166549c5a6b7f88cc1d122a3421d1463c8e34864c69c1be2a9dafcf3714c",
         intel: "2bce5f490ef3e284c3d39469c7f9df9b558652f883212cdfc6368ec62c87c785"

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
