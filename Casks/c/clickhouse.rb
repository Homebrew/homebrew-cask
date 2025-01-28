cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.1.1.4165-stable"
  sha256 arm:   "217390ffa7103d1617a6e16d96f99d0e7cda83bb7e0cb0b6481c5ae0d78ae49c",
         intel: "44760edf36a42b310a4b16a54df02a8e865654d59638e45dde4317f7ef4d9141"

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
