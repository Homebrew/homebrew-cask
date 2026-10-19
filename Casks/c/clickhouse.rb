cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.22.3-stable"
  sha256 arm:   "6d8902cfc5ac612390eb757436e6d297563ec00026a9ed1e48f2e5d4d4c4566a",
         intel: "dd2b507b289db6acf3cd102474aa093e7ece08281a7c90781ac9ed7a2fdaace6"

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
