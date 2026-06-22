cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.5.3.52-stable"
  sha256 arm:   "f9ce1da2f559c3209d9ae53d959ff7cbcbf57652aeb0f8085df85e9397b92c8c",
         intel: "32000361e1156e30fe787820f4797bef12b4f7a1f6f215fe467441df89c59635"

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
