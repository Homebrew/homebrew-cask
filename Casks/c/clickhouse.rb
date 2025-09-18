cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.8.4.13-lts"
  sha256 arm:   "f16f649603df2d9f704bff5837c2cbac6458e63ca7be8279deec5e121fc089e1",
         intel: "bfa6e1854529067f2b71d736be786549f6a0fb4faacdc2343e3ae5c6a2a702ee"

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
