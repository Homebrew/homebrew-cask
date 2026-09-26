cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.3.38-stable"
  sha256 arm:   "1928a0cabbe8a3e8af403a1bdb0fcc863a3dccc2147e3a5ef4401885e0b8aeea",
         intel: "efb294af6e48fd6afd840364c6e2a75bb04c3f9fc02c2c3ec7880c870a20b36a"

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
