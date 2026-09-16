cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.8.6.5-lts"
  sha256 arm:   "5af51aa9c248b579c72950f00002a4f319d5ac81a5a0b7281056061d84c64ef3",
         intel: "8fc728b01cb1b008c75148b85b7ecb810a187fe2d925acc4db10083706fd48c3"

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
