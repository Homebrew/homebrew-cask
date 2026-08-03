cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.7.2.59-stable"
  sha256 arm:   "4d50addaa4c5fa0172a4ad9ec52395e4931cfdc3e180f6a6ca17925cd8f06f00",
         intel: "c4d93b1b2948826663b880d4f4bef1b024df0aecbe4fd0026903358b7a769957"

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
