cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.2.4.23-stable"
  sha256 arm:   "fa6589cd762fb4d77f839c84e78a87706a30a414506da3ae9ebcc8720fbed7a1",
         intel: "ed8dc286415088ab01d855653da08a0df9eb80ee70f0e688bf2f34d856b48427"

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
