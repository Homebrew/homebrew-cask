cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.2.2.39-stable"
  sha256 arm:   "7ba4f8aacc7c0072315a82fa1cf0753be5f2351c9812ccc8cbf4bf4d22c72215",
         intel: "6b2b92c792f78e8cbc6fa27d41703cabdae760581ef2290cdbfba1665afe7fc8"

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
