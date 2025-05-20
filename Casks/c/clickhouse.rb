cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.4.5.24-stable"
  sha256 arm:   "6ccccbd853d57eee892fe3b197a4f7d00ea91e31d9eeb852c1b9606505ad521c",
         intel: "49563028e7e3888dfe444588acf3d004531e15be00d9e2e30fbf6c28f9b17e4e"

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
