cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.7.1.3997-stable"
  sha256 arm:   "e45d695c851252474cf5fc144ccc75271fd9ce28bebf5182a338002dc7e5f62a",
         intel: "7114dc561996e2934632810e6e773dedfd3c668158914fe5919d3de971d74467"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  disable! date: "2026-09-01", because: :unsigned

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
