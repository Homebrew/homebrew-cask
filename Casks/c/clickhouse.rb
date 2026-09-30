cask "clickhouse" do
  arch arm: "-aarch64"

  version "26.9.7.9-stable"
  sha256 arm:   "f5942349e41ab041b80419154509ba341708f0130e8475296928a7577ebf5240",
         intel: "4b05faa23e5d87f8eacdc9198a2b3a74d1827a9a8ae786e465e5b3dd277b1f0b"

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
