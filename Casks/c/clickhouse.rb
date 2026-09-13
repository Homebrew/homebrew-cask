cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.8.3.105-lts"
  sha256 arm:   "d522bbea727576bb34ab00662fad7142ba3f55c75ee570cce377fded751e7272",
         intel: "1cbd4d2ccaa9ca00be1074849b6ca8833cd6d9c52f0b86045ba3feb3d95169b0"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}.zip"
  name "ClickHouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  depends_on :macos

  binary "clickhouse"

  # No zap stanza required
end
