cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.8.5.13-lts"
  sha256 arm:   "5c354a6ce76319a39a71954fed598b241ff0694b3e05dfc0667939cf1aa4ad68",
         intel: "e74242dc8d2c00b2211454b1189cabfef94e8f629d0edb8cdf014ffa1a5fc39e"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}.zip"
  name "ClickHouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  depends_on :macos

  binary "clickhouse"

  # No zap stanza required
end
