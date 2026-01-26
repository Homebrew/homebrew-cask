cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.12.4.35-stable"
  sha256 arm:   "333d7e750e913745d323b9be6e5d1ff189444d7473b1ad60c2ead6a1c80ecb7a",
         intel: "cf4b08ff7bda647af69b42be32f742b191219a81efaa295746c8fcc3297aec65"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
