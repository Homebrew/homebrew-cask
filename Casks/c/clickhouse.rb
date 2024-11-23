cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.10.3.21-stable"
  sha256 arm:   "c234989fd81e669f5588d8d688dc8d42b2675def054fcc2d2607a7ddf3be8c3c",
         intel: "33f594f0d253203cd46f01f4d2b4e960815f13ceaf77dff35aad3adf14a237bf"

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
