cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.20.23-stable"
  sha256 arm:   "3db612215ec355d4ad2efc49b1e47d59ffd0d3a50bd15f321fba21f85f97ce36",
         intel: "c154163b69b38207985e7a796b5e8cb408fc68c0d03d3dd1429f30a74d483572"

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
