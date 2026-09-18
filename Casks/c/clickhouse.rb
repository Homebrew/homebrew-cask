cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.8.7.19-lts"
  sha256 arm:   "1353230c6ed5a18b2bd63f4aa5b7ff87da96f225106c66c03c32d8b7dec82782",
         intel: "453bfe42004ce2fda3aab2f8390a6af7f57267d59409e32ba176741933650923"

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
