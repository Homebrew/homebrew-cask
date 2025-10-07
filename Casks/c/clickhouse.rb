cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.9.3.48-stable"
  sha256 arm:   "badae975133b7b0c149a8abe49f8a2563e4133aebcddace1480193b166e2b71a",
         intel: "4152f22ab2d356f418540cbf133586dca6295ef91b99705037c4c1301aceafc8"

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
