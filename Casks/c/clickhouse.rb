cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.15.5-stable"
  sha256 arm:   "22020739f40786c9dd0ed08f5879313b5cffff854d39cf384027f17a17fca98c",
         intel: "072ed714b1f0f8b60ccbc6fcaff68282d187ac6c8dabf376941d1263b2c0b6c1"

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
