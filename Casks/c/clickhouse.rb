cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.12.2.59-stable"
  sha256 arm:   "30bcae2490fb5d9cdfd52ba9b25c4ad12efacc8882a6676a6a994e651c5aedee",
         intel: "52c6f05a051a1c4b6fed28c3c8a54c44113c5681f18de4675c2368e086f8bcad"

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
