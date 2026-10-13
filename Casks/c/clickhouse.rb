cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.18.11-stable"
  sha256 arm:   "36e6c923c3839e334352b2d4df32f8a90bc359fcd7703e691721c64fbddd3056",
         intel: "dfcb01913b2e071b158a47d8fc807a42ed4703e3d8dfb5d4a526430b8b0b16c9"

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
