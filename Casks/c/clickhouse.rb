cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.3.1.2703-lts"
  sha256 arm:   "b54a5767c0a1fff3d96d0751f3bac9a6331b895b7b30284cd9f026f7c678c5fd",
         intel: "c2d57469ba0f0ce54531e530e78d8685836220757df6651318c5bccf57ef80de"

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
