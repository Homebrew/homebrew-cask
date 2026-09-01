cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.8.2.7-lts"
  sha256 arm:   "db825ec9fd80141a8b4ed7335b5534c1801a978d33f0b7a5379533ddb9c0d8df",
         intel: "057195d43c6025e682c57fa42f888c12d18c2f665bf6f55bf648d7e253bd8db8"

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
