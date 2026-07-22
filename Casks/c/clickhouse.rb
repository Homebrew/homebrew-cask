cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.7.1.1315-stable"
  sha256 arm:   "6863789d74cc4007f13e040fe843b04361894be935b8ed6f4375adab763e761a",
         intel: "63e9337132c09064d0aa9249edfc4e5d5a3201b7ab050c01600387c2ecbf00d1"

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

  depends_on :macos

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
