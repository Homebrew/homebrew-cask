cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.3.3.42-lts"
  sha256 arm:   "d21a04d8a1f76c3f74e965d67484ec9fdf2cc311143b202ad32a4f9c6d23a059",
         intel: "f2dda00248e99875db28a9756f737ec2e877e665ceac5bb1f209208188e68584"

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
