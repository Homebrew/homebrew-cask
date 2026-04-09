cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.3.5.12-lts"
  sha256 arm:   "b94440c95a2a36fd8c4e52f7a3ac84bec460166cb21e0b16fb144f7aa54aa541",
         intel: "a28fa9cbdabeb4acc2ccb064b51fde616c2abed929f07178cfe6401d7eb248aa"

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
