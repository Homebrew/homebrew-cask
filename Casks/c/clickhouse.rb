cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.1.2.3-stable"
  sha256 arm:   "6498413cca530ea061e7bd891c3e5c83be2a65cd2cc84eb8d8bdbb374b0a6857",
         intel: "52c58fcce64f74c035dd99fc6e3f959b34f05696ebe9f1998f337ac7fe5d299c"

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
