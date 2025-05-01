cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.4.2.31-stable"
  sha256 arm:   "963c1d48ed8e921a8c527730b13e9f8c10f6500f0297833c9729790386862d44",
         intel: "8d7067295f71d56d3e6088b906b1d92d91aa1ebffeaa2f78800bd04aed28df34"

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
