cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.6.1.4423-stable"
  sha256 arm:   "85bab222c1b3d7417a081e1724a1891fecf96af00cec783df7084105cc2710e4",
         intel: "5d72f27b50f971109c0141d9c5267f58d0b7fc78bf99afa1191cdbe04e47de3c"

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
