cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.10.11.12-stable"
  sha256 arm:   "c570b66dcc1e5fbb9b16395050eb318fd0d2bc31bc27eb60e428c15da4039f24",
         intel: "7d7100427aa8356fa311b8b71bafb433f685961d17d617778045cbda5e3aa319"

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

  zap :not_required
end
