cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.8.1.2992-lts"
  sha256 arm:   "990d2a07498e5da91184c826ca6868ea06ae6fff388da30e2f706203c063bee8",
         intel: "d9b93b7cca481c50c046693f8b54df5ce73c04798a7bf1bc1113d1d6135c0a89"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
    strategy :github_releases
  end

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
