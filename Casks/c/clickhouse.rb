cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.11.1.558-stable"
  sha256 arm:   "8e251eac9eb44cba5450e25f99a34c3d7a241bbd5d5dbaa7c1433dcca7d0ce3f",
         intel: "fbbc6eb3422076194a93f221f65d1ef3a3af9ffe43fc93742f3cfed5f9dd441b"

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
