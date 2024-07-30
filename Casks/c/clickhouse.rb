cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.7.1.2915-stable"
  sha256 arm:   "56802b67ad4f2e8ba6deea694efbe647b0b03ceecc04aa55bc0c8368ca5ca666",
         intel: "f7d56983fc31c0e6c9070d703ff09e71b60800919815e6def646e163d3d87cd7"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
