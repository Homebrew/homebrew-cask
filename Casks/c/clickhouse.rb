cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.8.2.7-lts"
  sha256 arm:   "cf77ef7f8bb8d04f4884b67533a9a00663e9c7a8894cb5b37ff4c2fe18dd91b3",
         intel: "16762af5f1815971daad2d2728deaae37c1d0ca221dfdfda98dc4bc36719ae8f"

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
