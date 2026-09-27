cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.4.3-stable"
  sha256 arm:   "e5a70e3040d518a248bc14c61a0d768d3805e043455a3b4f68877ab6126861f3",
         intel: "81162af7b06abc474a511e0c7ede12ff5fb68560bb21700f4051bbf37da91494"

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
