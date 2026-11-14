cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.10.4.207-stable"
  sha256 arm:   "7a72bc7849995c1f2e2590eda91ecb7318d53f58b51b76919769a9928421605f",
         intel: "ba82e07b3fb12a6977db3f915ad1bc15a74410c3168f8fc9e7dc4757ca0fc357"

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
