cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.8.3-stable"
  sha256 arm:   "5f595eb651b8dd0bfdd2cd0effa1ca95b810eb325fbb419839978ccffae3db5e",
         intel: "921b2956c6be5b3c4d90e9380fa497e50b903010ead5c87b51075db0b1287f6d"

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
