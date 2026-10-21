cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.24.8-stable"
  sha256 arm:   "7d0755b097e98a66a68981c4c764f033f3fa56f40972747b0c7dc30afa49ae43",
         intel: "5e6ac32317c323c91eb73abb72e7012461825cd540b576d1ac0a962a0eb694e6"

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
