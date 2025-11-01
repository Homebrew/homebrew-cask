cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.10.1.3832-stable"
  sha256 arm:   "cd2336ba819465945430a3f757669333ce12c736a02ee6dc4fede696a1d68b6f",
         intel: "c9dc5d81efaf60f7e1531adb86c732df39b465d537b69654988fb23d547c1894"

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
