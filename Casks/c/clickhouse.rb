cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.8.3.59-lts"
  sha256 arm:   "6733d8b02449eecd6d5412fdbfe3962bde419a8a83cc6d2a0310dc2782c978f7",
         intel: "6ac6efd0be9ba22450364985fac849b07a430488924782c7b5b6e85cce08420c"

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
