cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.3.2.23-lts"
  sha256 arm:   "6ad2f94541582637243a80bcfba9d30fca81052d520809b59f22e88ba2b9df00",
         intel: "cc9ade13af05253c458dd741e02924e02bbf4b8547e876bed2660fa8f3b5b5f3"

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
