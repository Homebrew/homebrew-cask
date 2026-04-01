cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.3.3.20-lts"
  sha256 arm:   "b496ad4a98564807d59bb7cc8fbbbccccb22f65c12dad3dca53022b10fb09318",
         intel: "c919485a68ea4c7600343309cd047faade8b939db4bdf5ecde24f74209e77549"

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
