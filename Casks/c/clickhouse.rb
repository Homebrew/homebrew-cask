cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.4.3.22-stable"
  sha256 arm:   "0dd776475a14a03817a117e578b28366cca2f569d2ff7809727d892726dc943c",
         intel: "9ff5d320d622f765f54784c9cfddd0483527edf3823c8b46b92ea27ce75ea896"

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
