cask "clickhouse" do
  arch arm: "-aarch64"

  version "23.9.2.56-stable"
  sha256 arm:   "62b600cc586d4cfabee50042d2b5980c760d312083219da14fa85a9c025e299a",
         intel: "986a08f1aa90c8cef013f5a98acf35af547d30d497baab53e4471945fd770172"

  url "https://github.com/ClickHouse/ClickHouse/releases/download/v#{version}/clickhouse-macos#{arch}",
      verified: "github.com/ClickHouse/ClickHouse/"
  name "Clickhouse"
  desc "Column-oriented database management system"
  homepage "https://clickhouse.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[._-](lts|stable))$/i)
  end

  binary "clickhouse-macos#{arch}", target: "clickhouse"

  # No zap stanza required
end
