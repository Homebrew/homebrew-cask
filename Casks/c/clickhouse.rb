cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.10.1.1976-stable"
  sha256 arm:   "8ffe145595e6b8875105327c986b48d789373e1da808cf97174f451c4b696e11",
         intel: "ef388a505a968dfa48712bdf22051c830f542b51b21f49893393bbe65b92a38f"

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
