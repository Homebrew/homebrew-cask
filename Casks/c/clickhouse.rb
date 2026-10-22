cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.25.15-stable"
  sha256 arm:   "cdc470df31ad95daec96e04e423104f956176aecbbc1494fa3ec357a7791d41a",
         intel: "5fe88478a002c45b427cfab88b3094a95f4c0aa858299c297d1516aeb80aa5fa"

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
