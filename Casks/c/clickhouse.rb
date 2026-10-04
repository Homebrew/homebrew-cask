cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.10.4-stable"
  sha256 arm:   "9a6cad088ccec4643c680c2946ab94a164cf9429aebaa07b57416001d8f7f509",
         intel: "2b4cb1f597fc3a34a73ee0a48cd0db1ebc512375e884c3863c0ae1e7573bb6f7"

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
