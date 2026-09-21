cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.8.10.6-lts"
  sha256 arm:   "9ac7d4854bebcff52bca516a1e5bcee1cbc5ac71d8d83d3235c885f7341db3f5",
         intel: "1092b85ff93ab380e2b2b38da1c9f9056f2e22cc5d5919871183bd4d7ddb9305"

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
