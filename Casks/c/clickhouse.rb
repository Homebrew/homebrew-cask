cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.1.5.31-stable"
  sha256 arm:   "a098da3ef9ac0f9b4085dbe19bf5e69f217f99fd2cdf521c29d80831bfba2f0f",
         intel: "92f94cf7f813cf887ee94cefec4f6371be3e1ace255e507c0d378b75a8e009a5"

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
