cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.7.4.58-stable"
  sha256 arm:   "d1f6ae389efd859edad31f2e14833f3ce417b221cad7fa3944ab75c10189101a",
         intel: "9a14d386e9b2f7bd005e21257c5a2ba2a5517be7f155c7f66ba6440457971fda"

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
