cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.17.8-stable"
  sha256 arm:   "7aa091a25d5d07b60cdcf52f4b60c000353c6c3cce52189c13d9858c3dc9eeaf",
         intel: "70d8149192f6cfcae6b9b341e0f22d03eaa6b36239d1ad5b692bd2b5789b0d6e"

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
