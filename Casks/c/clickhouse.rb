cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.19.9-stable"
  sha256 arm:   "a4923065d432f006a67d5e0702e86c0c88614f685de831babbf5840b6df1a703",
         intel: "3bfaabf005ed45f7b00b68173869bec14b9435e7aa207ba8bda1ecdabf9d3bf3"

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
