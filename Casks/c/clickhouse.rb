cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.3.6.5-lts"
  sha256 arm:   "66654b87051fd37ce5c4c957ee9f0e5f336d6df8a75a3d183942f172561b2388",
         intel: "ad2947ea5d81ad01bc67ea593e8aa58982e7ae04f35680df4157e5557902af1c"

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
