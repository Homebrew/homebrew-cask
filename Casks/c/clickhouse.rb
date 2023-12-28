cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.12.1.1368-stable"
  sha256 arm:   "98fca434c2408ddce278750ab48ca7d6ebaaa9ebeef77b0843d24659ac4fee1e",
         intel: "f2ffff7729e20a84c5833d82ef7b058a1a999f2772562682813296b5282cbb13"

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
