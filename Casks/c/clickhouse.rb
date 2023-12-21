cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.11.3.23-stable"
  sha256 arm:   "d6b500fd28ec760557a4904b9776bd53bc66a04c685afa9dadd4ce6658c1457a",
         intel: "f93c5ada0373e5dc86dc79842e8f2761ff294950d0b73cfc3c99c4276e13b676"

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
