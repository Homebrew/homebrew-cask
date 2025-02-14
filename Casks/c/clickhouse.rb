cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.1.4.53-stable"
  sha256 arm:   "db6c6aec9d831f8cf8cacea7dcb7791cb8cf5cb3fc80b64e1b9339b116e1e66b",
         intel: "3f8af9d76a5c4ede023af6ad462783821a838b8b913430d76633098a88e77bd2"

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
