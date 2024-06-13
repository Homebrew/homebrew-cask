cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.5.3.5-stable"
  sha256 arm:   "3f99f3d739ee5a38ffc942ecb804faf7322a043172df37f849da75422f165fef",
         intel: "a54b9b2a2ca9cb9b11c037f6401e79aee3d5bf051e9dcbc34e588435ada8d056"

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
