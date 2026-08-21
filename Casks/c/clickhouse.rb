cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.7.5.10-stable"
  sha256 arm:   "ddb3dfdeaa49aca32876c7e54ebc42317a32ea0f9618ff5f62df3c90a2443152",
         intel: "2cb01a81d93c0fd5459fa62308caadc8a8a7c9eead3a190f230c175b2079d7ac"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}.zip",
      verified: "github.com/ClickHouse/ClickHouse/"
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
