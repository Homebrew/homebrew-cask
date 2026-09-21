cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.1.1629-stable"
  sha256 arm:   "8fd742634191f4570865d9f4e116c285864fa92b47941bf2f50a1fa4ca329cd8",
         intel: "cc7f81759082d520f0a65c9f9939e4d2e7885771c7a5a0ffb8257ef9c98b2e6e"

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
