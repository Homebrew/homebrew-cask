cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.5.2-stable"
  sha256 arm:   "f5b8eb3c77ad57c5eeb868c3a968f04382a54c824a8ab22925b96ff7632c7253",
         intel: "446b7d9f3396a8946a19afe89efe9a5bd534e5215cfe9ecdfd3be0c79906c391"

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
