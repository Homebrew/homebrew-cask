cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.1.5.6-stable"
  sha256 arm:   "8709b9ac1d16284dc3827db75f1036ec8d12f4977d81b9d94e285b05cae0e7af",
         intel: "01de60080768d9606f4cf1d6c439935f7d6b60521dd130b9a92f97dc2a4503c1"

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
