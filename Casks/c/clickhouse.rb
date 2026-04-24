cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.3.9.8-lts"
  sha256 arm:   "7d10a7fc1ece9e55786a48b799950a2c344b6b537e739555014b8379a201f837",
         intel: "f78467cde5c42adc27aeeabe2ca66b7b5a5ffc299e447653b8db648fa6e84b94"

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

  depends_on :macos

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
