cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.1.6.34-stable"
  sha256 arm:   "5d12a84f8e7b72e0e1e5626a676cbd155f00f1847fc3e586b90b78efe0ece998",
         intel: "c4e189eddd5f8ecfa6da1be029283fdf13d0f4acb2b9bcf53a7c12b7b251f78f"

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
