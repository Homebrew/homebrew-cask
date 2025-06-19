cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.5.3.75-stable"
  sha256 arm:   "d5863dcd87de6b229f4b59a5e7a4410b18931996e328f377cd06318731c42da2",
         intel: "9cbefebf13749574602c10726eb8459555bea349117d635db90172e95d3055c4"

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
