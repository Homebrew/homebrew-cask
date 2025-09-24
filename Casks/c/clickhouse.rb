cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.8.6.11-lts"
  sha256 arm:   "59f0a43201477047e374e00f66f8456bb2a62b9dcf717b8ff5de0c6ad7c75bab",
         intel: "6b0012dcb3d97756a4ac8413902d378226014675140c23fee83d732fb53354e9"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
