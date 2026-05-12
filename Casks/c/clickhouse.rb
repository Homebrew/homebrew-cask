cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.4.2.10-stable"
  sha256 arm:   "544d1740066a38e4b0f9c419f65fb600524f93b48a56397328d67e22e0124431",
         intel: "d270364d9e724612faf39e8134da62704a7d8f4befb17b8556b6cae95079bddf"

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
