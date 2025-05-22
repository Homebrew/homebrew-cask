cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.5.1.2782-stable"
  sha256 arm:   "0d628a15de28d08381772cc5d5431c3079d8841126398bb9d31c89652aaad0c5",
         intel: "90e035a6ecbf695e43d182782412f9e97ad7e28b154228d97c39e13b8a85271b"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
