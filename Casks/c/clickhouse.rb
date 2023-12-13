cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.11.2.11-stable"
  sha256 arm:   "61280459c7645705affd96e9d11082b5aac845168b0b3d2cf699727f284cc8f0",
         intel: "f3faed086a2f27c00ca017f2d36e6d4b22b9bc6030c5bea347adca54adf67327"

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
