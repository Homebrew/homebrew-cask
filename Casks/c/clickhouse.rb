cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.9.2.42-stable"
  sha256 arm:   "ecb81cb8f84b79f7b989ac108ea277b0f2754070478cccae3f8baa28891e9b00",
         intel: "ab19890ac35e20c022a4dd7908621456329ec67b28505049fd2ce673e4513423"

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
