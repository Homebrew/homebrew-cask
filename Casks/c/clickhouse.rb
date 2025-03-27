cask "clickhouse" do
  arch arm: "-aarch64"

  version "25.3.2.39-lts"
  sha256 arm:   "32700c08165a1013934ebebcbb5fabab0b1741af150dc2ac9d5bfc3ba63d91ff",
         intel: "aaee8279a8bcc0574dc477480927f0c0129766c979aa72b4e40ec420fd65a814"

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
