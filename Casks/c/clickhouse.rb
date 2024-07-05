cask "clickhouse" do
  arch arm: "-aarch64"

  version "24.6.2.17-stable"
  sha256 arm:   "6beba42c56bc5aaf2a2874421010c9cf3c1fe759615ffecffd49fdb50fd28384",
         intel: "35616be456fe660eabc916dbca77143ae92aeefd00a05719ff3683e2450dde2b"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
