cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.4.3.37-stable"
  sha256 arm:   "e1e909d807cdba10808d79e6e396b8a2413b508f3796bf986bbbb736d8fe30f7",
         intel: "fd20c501f622c1afdfb95229c52d397834eb389b4e1427767bca90b3a02dacfb"

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
