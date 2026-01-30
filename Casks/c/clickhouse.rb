cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.1.1.912-stable"
  sha256 arm:   "fe6b0c809c210591f97c931d9446cc424f845c6480864eb1f648d10eab474f3f",
         intel: "0a76790482e77d559d9e8c7a82a78da94fdc25e2b4770d146c4e4efa9733af49"

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
