cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.1.3.31-stable"
  sha256 arm:   "96a34ad5e17b87e6395053afb1e68e1712993639b17a3a8b0c4ba83a54408ad2",
         intel: "b7b6c95b9a713578fd422e157fcde6df9028c01cc5e3d94325298ef29d71e0cc"

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
