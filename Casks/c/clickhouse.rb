cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.4.4.25-stable"
  sha256 arm:   "f36351a1155032b630bd63b41aa64ad491d606d1c462515afae0207ffd024326",
         intel: "2d3d2568f3bf3933143aa9e1f2d209aa4c43a5d144bb307cc5209412677926b8"

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
