cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.6.6-stable"
  sha256 arm:   "8445a6a8071f4d3978212a1bd77780403de4848f7f787952d98e7ea60ea954aa",
         intel: "014e18eeb2f3f2d97b98aa84eea3fc19243841309c35180314844353eb5aba93"

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
