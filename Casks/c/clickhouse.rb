cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.8.3.66-lts"
  sha256 arm:   "f6fcc0303bcb8be10b846cadbe87c3c1f548200b6bb92b6cf270ed54b3c9b613",
         intel: "6c00abb9bd5508fffd02cac63f7798c020ef0691a8063d15b5d2da96531c0db9"

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
