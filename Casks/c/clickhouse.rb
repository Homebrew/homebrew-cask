cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.5.2.47-stable"
  sha256 arm:   "f94fb82fe087c8d2b11639e66f67e0554544aa8a6ed64e8a5bea54277d96bce3",
         intel: "7cb8e3f6af6fc2e05633c890382d55a2f97cfbc80d4e301cea55a5a878752aef"

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
