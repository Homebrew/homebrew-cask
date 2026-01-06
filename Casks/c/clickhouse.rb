cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.12.2.54-stable"
  sha256 arm:   "29a3c969f584927f5bca26bfedeedb585a9fb0256fc3ed72a484e52958c2072f",
         intel: "69cc84a678197faceddf00294e5d93bf5587a196a969b9a9888b6623f6de39d8"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
