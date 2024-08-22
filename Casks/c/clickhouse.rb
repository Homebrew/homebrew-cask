cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.8.2.3-lts"
  sha256 arm:   "eba5b640db07260fd507fd7bd4604c913e449b031fc26d7adbe612abc8c8801a",
         intel: "5e9911b37eb1b549d234e69eb4199602134c8e595f8a08ae141b22ee435ecb2e"

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
